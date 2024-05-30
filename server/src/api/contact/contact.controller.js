import mailer from "../../utils/mailer";
import { db } from "../../models";

export default {
  async submit_contact(req, res) {
    try {
      await db.contact.create({
        ...req.body,
        reply_text: req.body.reply_text || "",
        user_reply: req.body.user_reply || 1,
      });
      return res.status(200).json({ ok: true });
    } catch (error) {
      console.error("Error creating contact:", error); // Log the error for debugging
      return res.status(500).json({ ok: false, error: error.message });
    }
  },

  async delete_contact(req, res) {
    const { contactId } = req.body;
    db.contact.destroy({
      where: {
        id: contactId,
      },
    });
    return res.status(200).json({ ok: true });
  },

  async reply_contact(req, res) {
    const { email, content, contactId, replyText, user_reply } = req.body;
    mailer
      .replyContact(email, replyText)
      .then(() => {
        db.contact.update(
          {
            status: "replied",
            reply_text: replyText,
            user_reply,
          },
          {
            where: { id: contactId },
          }
        );
        return res.status(200).json({ ok: true });
      })
      .catch((e) => {
        return res.status(200).json({ ok: false });
      });
  },
  async get_list_contact(req, res) {
    const contactList = await db.contact.findAll({
      order: [["createdAt", "DESC"]],
    });
    return res.status(200).json({ ok: true, data: contactList });
  },
};

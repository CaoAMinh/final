import transporter from "../config/transporter";
import { db } from "../models";
import bcrypt from "bcrypt";
export default {
  async sendOtpverifyEmail(id, email) {
    try {
      const OTP = `${Math.floor(1000 + Math.random() * 9000)}`;
      console.log(OTP);
      transporter.sendMail({
        from: '"Trung of Eko Smith 👻" trungdev is running test!!',
        to: email,
        subject: "Xác nhận quên mật khẩu",
        html: `<p>Xin chào! Có vẻ như bạn đang muốn đổi mật khẩu cho website MHStore
         <br/>Đừng quên đây là mã xác nhận của bạn <b> ${OTP} </b><br/>  
         <p>MMã xác nhận này chỉ có trong 2 phút! Nếu bạn không biết vì sao có email này, hãy bỏ qua nó!</p> <br />  📡 Mạng đang chậm như rùa 🐢, khó làm việc quá! <br/>💻 Anh ấy đang cố gắng tối ưu hóa hiệu suất 🌐 <br/>🚀 Hy vọng sẽ cải thiện tốc độ sớm! 💪</p>`,
      });
      const hashedOtp = await bcrypt.hash(OTP, 10);
      const expirationTime = new Date();

      expirationTime.setMinutes(expirationTime.getMinutes() + 2);
      await db.Otp.findOne({ where: { userId: id } }).then(async () => {
        await db.Otp.destroy({
          where: { authId: id },
          truncate: true,
        });
      });

      await db.Otp.create({
        otp: hashedOtp,
        userId: id,
        expiresAt: expirationTime,
      });

      return true;
    } catch (error) {
      console.error("Error sending OTP:", error);
      return false;
    }
  },

  sendEmployeePassword: (email, otp) => {
    return new Promise((resolve, reject) => {
      try {
        db.customer.findOne({ where: { email: email } }).then((user) => {
          if (user) {
            transporter.sendMail(
              {
                from: process.env.MAIL_FROM,
                to: email,
                subject: "Grocery blogging website",
                html:
                  "Dear user,<br><br> Thank you for registering with Janakpur.<br> <br> <b>" +
                  otp +
                  "</b><br> <br> This link will expire in 30sec. <br> This is a system generated mail. Please do not reply to this email ID.<br>Warm Regards,<br> Customer Care<br> Grocerry",
              },
              function (error, info) {
                if (error) {
                  return reject({
                    name: "GrocerryException",
                    msg: "Email Sending Failed",
                  });
                }
                return resolve(true);
              }
            );
          } else
            throw {
              name: "GrocerrryException",
              msg: "Email Body not available",
            };
        });
      } catch (err) {
        reject(err);
      }
    });
  },

  replyContact: async (email, content) => {
    var mailOptions = {
      from: process.env.MAIL_USERNAME,
      to: email,
      subject: "Sending Email from shop",
      text: content,
    };
    transporter.sendMail(mailOptions, function (error, info) {
      if (error) {
        console.log(error);
        throw error;
      } else {
        console.log("Email sent: " + info.response);
        return 1;
      }
    });
  },

  sendUserOrder: async (email, content) => {
    var mailOptions = {
      from: process.env.MAIL_USERNAME,
      to: email,
      subject: "Sending Email from shop",
      text: content,
    };
    transporter.sendMail(mailOptions, function (error, info) {
      if (error) {
        console.log(error);
        throw error;
      } else {
        console.log("Email sent: " + info.response);
        return 1;
      }
    });
  },
};

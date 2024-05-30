import { where } from "sequelize";
import { db } from "../../models";

export const addId = async (req, res) => {
  try {
    const { id } = req.user;

    const { productId, quantity, unitSize } = req.body;
    const existingCartItem = await db.userCart.findOne({
      where: { userId: id, productId: productId, unitSize: unitSize },
    });
    if (existingCartItem) {
      existingCartItem.quantity += quantity;
      await existingCartItem.save();
      return res.json({
        msg: "update cart successfully",
        data: existingCartItem,
      });
    }
    const result = await db.userCart.create(
      {
        userId: id,
        productId: productId,
        quantity: quantity,
        unitSize: unitSize,
      },
      {
        fields: ["userId", "productId", "quantity", "unitSize"],
      }
    );
    return res.json({ msg: "create cart successfully", data: result });
  } catch (error) {
    return res.json(error);
  }
};

export const findAll = async (req, res) => {
  const { userId } = req.body;

  try {
    const resule = await db.userCart.findAll();
    return res.json({ result: true, msg: resule });
  } catch (error) {
    return res.json({ result: false, msg: error });
  }
};
export const findId = async (req, res) => {
  const { id } = req.user;
  try {
    const result = await db.userCart.findAll({
      where: { userId: id },
      include: [{ model: db.product, as: "product" }],
    });

    return res.json({ result: true, msg: result });
  } catch (error) {
    return res.json({ result: false, msg: error });
  }
};
export const editId = async (req, res) => {
  const { id } = req.user;
  const { productId, quantity, unitSize } = req.body.product;
  try {
    const cartItem = await db.userCart.findOne({
      where: { userId: id, productId: productId, unitSize: unitSize },
    });

    if (!cartItem) {
      return res.json({ result: false, msg: "CartItem not found." });
    }
    cartItem.quantity = quantity;
    await cartItem.save();

    return res.json({
      result: true,
      msg: "CartItem updated successfully.",
      data: cartItem,
    });
  } catch (error) {
    return res.json({ result: false, msg: error });
  }
};
export const deleteId = async (req, res) => {
  const { id } = req.user;
  const { productId, unitSize } = req.body.product;

  try {
    const result = await db.userCart.destroy({
      where: { userId: id, productId: productId, unitSize: unitSize },
      individualHooks: true,
    });
    if (result) {
      return res.json({ msg: true, value: result });
    }
    return res.status(501).json({ msg: "No data in databse!" });
  } catch (error) {
    res.json({ msg: false });
  }
};

export const deleteIdALl = async (req, res) => {
  const { id } = req.user;

  try {
    const result = await db.userCart.destroy({
      where: { userId: id },
      individualHooks: true,
    });
    if (result) {
      return res.json({ msg: true, value: result });
    }
    return res.status(501).json({ msg: "No data in databse!" });
  } catch (error) {
    res.json({ msg: false });
  }
};

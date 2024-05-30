import mailer from "../../utils/mailer";
import { db } from "../../models";
var Sequelize = require("sequelize");
export default {
  async index(req, res) {
    try {
      const {
        customerId,
        paymentmethod,
        orderId,
        deliveryAddress,
        product,
        grandTotal,
        voucherId,
        deliveryCharge,
        reason,
      } = req.body;
      // console.log(req.body);

      db.customer
        .findOne({ where: { id: customerId } })
        .then((p) => {
          if (p) {
            return db.Order.create({
              custId: customerId,
              number: orderId,
              grandtotal: grandTotal,
              paymentmethod: paymentmethod,
              voucherId: voucherId || 0,
              deliveryFee: deliveryCharge,
              reason: reason || "",
            });
          }
          console.log(p);
          return res.status(500).json({ errors: ["User is not found"] });
        })
        .then((order) => {
          if (order) {
            return db.Address.create({
              orderId: order.id,
              custId: customerId,
              fullname: deliveryAddress ? deliveryAddress.name : "",
              phone: deliveryAddress ? deliveryAddress.phone : "",
              discrict: deliveryAddress ? deliveryAddress.discrict : "",
              city: deliveryAddress ? deliveryAddress.city : "",
              states: deliveryAddress ? deliveryAddress.states : "",
              shipping: deliveryAddress ? deliveryAddress.address : "",
            }).then((p) => [order, p]);
          }
        })
        .then(async ([order, p]) => {
          if (order) {
            let cartEntries = [];
            for (let i = 0; i < product.length; i++) {
              cartEntries.push({
                orderId: order.id,
                addressId: p.id,
                productId: product[i].productId,
                name: product[i].product.name,
                qty: product[i].quantity,
                price: product[i].product.price,
                total: product[i].total || 1000000,
                photo: product[i].product.photo,
                discount: product[i].product.discountPer,
              });
            }
            const cartResult = await db.Cart.bulkCreate(cartEntries);

            for (let prod of product) {
              // console.log(prod);
              const productID = prod.productId;
              const amountToDeduct = prod.quantity;
              const sizeToDeduct = prod.unitSize;

              const productSize = await db.productsize.findOne({
                where: { productID },
              });

              if (productSize) {
                await db.productsize.update(
                  { amount: productSize.amount - amountToDeduct },

                  { where: { productID: productID, size: sizeToDeduct } }
                );
              } else {
                console.error(
                  `ProductSize with productID ${productID} not found`
                );
              }
            }

            return cartResult;
          }
        })
        .then(() => {
          mailer.sendUserOrder(
            deliveryAddress?.email || "",
            "You have ordered successfully, ordered at " + new Date()
          );
          res.status(200).json({ success: true });
        })
        .catch(function (err) {
          console.log(err);
          res.status(500).json({ errors: ["Error adding cart"] });
        });
    } catch (err) {
      throw new RequestError("Error");
    }
  },

  async getAllOrderList(req, res, next) {
    let page = 1;
    if (req.query.limit !== undefined) {
      limit = parseInt(req.query.limit);
    }
    if (req.query.page !== undefined) {
      page = req.query.page;
      if (page < 1) page = 1;
    }
    if (req.query.sort) {
      if (req.query.sort === "name") {
        sort = ["name"];
      }
    }
    try {
      db.Order.findAll({
        order: [["createdAt", "DESC"]],
        include: [{ model: db.Address }, { model: db.Cart }],
      })
        .then((list) => {
          res.status(200).json({ success: true, order: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
  async getAllOrderListsss(req, res, next) {
    try {
      db.Order.findAll({
        order: [["createdAt", "DESC"]],
        include: [{ model: db.Address }, { model: db.Cart }],
      })
        .then((list) => {
          res.status(200).json({ success: true, order: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
  async getAllProductionOrder(req, res, next) {
    try {
      db.Cart.findAll({ order: [["productId", "DESC"]] })
        .then((list) => {
          res.status(200).json({ success: true, order: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
  async statusUpdate(req, res, next) {
    try {
      const { id, status, deliverydate } = req.body;
      db.Order.findOne({ where: { id: id } })
        .then((list) => {
          if (req.body?.status === "delieverd") {
            mailer.sendUserOrder(
              req.body?.email || "",
              `Your #ORDER-${list.number} have delivered successfully, delivered at ` +
                req.body?.deliverydate
            );
          }
          if (req.body?.status === "processing") {
            mailer.sendUserOrder(
              req.body?.email || "",
              `Your #ORDER-${list.number} is processing, delivered at ` +
                req.body?.deliverydate
            );
          }
          if (req.body?.status === "shipping") {
            mailer.sendUserOrder(
              req.body?.email || "",
              `Your #ORDER-${list.number} is shipping, shipping at ` +
                req.body?.deliverydate
            );
          }
          if (req.body?.status === "cancel") {
            mailer.sendUserOrder(
              req.body?.email || "",
              `Your #ORDER-${list.number} is canceled, reason: ${
                req.body?.reason || ""
              }, cancel at ` + req.body?.deliverydate
            );
          }
          return db.Order.update(
            {
              status: status,
              deliverydate: deliverydate ? deliverydate : list.deliverydate,
              reason: req.body.reason || "",
            },
            { where: { id: id } }
          );
        })
        .then((success) => {
          res
            .status(200)
            .json({ success: true, msg: "Successfully Updated Status" });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: err });
    }
  },

  async getAllOrderListById(req, res, next) {
    try {
      db.Order.findAll({
        where: {
          custId: req.body.id,
        },
        include: [{ model: db.Address }, { model: db.Cart }],
      })
        .then((list) => {
          res.status(200).json({ success: true, order: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
  async getAllOrderStatus(req, res, next) {
    try {
      db.Order.findAll({
        where: { status: req.body.status },
        order: [["createdAt", "DESC"]],
        include: [{ model: db.Address, include: [{ model: db.Cart }] }],
      })
        .then((list) => {
          res.status(200).json({ success: true, order: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
  async getAllOrderCount(req, res, next) {
    try {
      db.Order.findAll({
        attributes: [
          "status",
          [Sequelize.fn("COUNT", Sequelize.col("status")), "total"],
        ],
        group: ["status"],
      })
        .then((list) => {
          res.status(200).json({ success: true, data: list });
        })
        .catch(function (err) {
          next(err);
        });
    } catch (err) {
      res.status(500).json({ errors: "" + err });
    }
  },
};

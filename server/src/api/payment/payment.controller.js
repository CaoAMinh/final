import { db } from "../../models";
import crypto from "crypto-js";
import moment from "moment";
import qs from "qs";
import dotenv from "dotenv";
import axios from "axios";
import mailer from "../../utils/mailer";
dotenv.config();

const config_app_zalo = {
  app_id: process.env.ZALO_PAY_APP_ID,
  key1: process.env.ZALO_PAY_KEY_1,
  key2: process.env.ZALO_PAY_KEY_2,
  endpoint: process.env.ZALO_PAY_ENDPOINT,
};

export const getAllPayment = async (req, res, next) => {
  try {
    db.payment
      .findAll({
        include: [{ model: db.customer }],
      })
      .then((list) => {
        res.status(200).json({ success: true, data: list });
      })
      .catch(function (err) {
        next(err);
      });
  } catch (err) {
    throw new RequestError("Error");
  }
};

export const paymentZalo = async (req, response) => {
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
      .then(async () => {
        const embed_data = {
          redirecturl: process.env.ZALO_PAY_REDIRECTURL,
        };

        const items = [{ madonhang: orderId, email: deliveryAddress?.email }];
        const transID = Math.floor(Math.random() * 1000000);
        const order = {
          app_id: config_app_zalo.app_id,
          app_trans_id: `${moment().format("YYMMDD")}_${transID}`,

          app_user: "user123",
          app_time: Date.now(),
          item: JSON.stringify(items),
          embed_data: JSON.stringify(embed_data),
          amount: grandTotal,
          description: `Shop - Payment for the order #${transID}`,
          bank_code: "",
          callback_url: `${process.env.ZALO_CALLBACK_URL}/payment/callback-zalo`,
        };

        const data =
          config_app_zalo.app_id +
          "|" +
          order.app_trans_id +
          "|" +
          order.app_user +
          "|" +
          order.amount +
          "|" +
          order.app_time +
          "|" +
          order.embed_data +
          "|" +
          order.item;
        order.mac = crypto.HmacSHA256(data, config_app_zalo.key1).toString();
        try {
          const result = await axios.post(config_app_zalo.endpoint, null, {
            params: order,
          });
          try {
            await db.payment.create({
              custId: customerId,
              orderCreationId: orderId,
              zalopayPaymentId: order.app_trans_id,
              zalopayOrderId: order.app_trans_id,
              amount: 1,
              status: false,
              method: "payment",
              currency: "",
            });

            return response.status(200).json({
              code: result.data.return_code,
              url: result.data.order_url,
            });
          } catch (error) {
            console.log(error);
            response.status(500).json({ errors: ["Error adding cart"] });
          }
        } catch (error) {
          response.status(500).json({ errors: ["Error adding cart"] });
        }
      })
      .catch(function () {
        response.status(500).json({ errors: ["Error adding cart"] });
      });
  } catch (err) {
    throw new RequestError("Error");
  }
};
export const callbackZalo = async (req, res) => {
  let result = {};
  console.log(req.body);

  try {
    let dataStr = req.body.data;
    let reqMac = req.body.mac;

    let mac = crypto.HmacSHA256(dataStr, config_app_zalo.key2).toString();
    if (reqMac !== mac) {
      result.return_code = -1;
      result.return_message = "mac not equal";
    } else {
      let dataJson = JSON.parse(dataStr, config_app_zalo.key2);
      mailer.sendUserOrder(
        deliveryAddress?.email || "",
        "You have ordered successfully, ordered at " + new Date()
      );
      result.return_code = 1;
      result.return_message = "success";
    }
  } catch (ex) {
    result.return_code = 0;
    result.return_message = ex.message;
  }
  res.json(result);
};

export const oderStatus = async (request, reponse) => {
  const { app_trans_id } = request.params;
  console.log(app_trans_id);
  let postData = {
    app_id: config_app_zalo.app_id,
    app_trans_id: app_trans_id, // Input your app_trans_id
  };

  let data =
    postData.app_id + "|" + postData.app_trans_id + "|" + config_app_zalo.key1; // appid|app_trans_id|key1
  postData.mac = crypto.HmacSHA256(data, config_app_zalo.key1).toString();

  let postConfig = {
    method: "post",
    url: "https://sb-openapi.zalopay.vn/v2/query",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    data: qs.stringify(postData),
  };
  try {
    const result = await axios(postConfig);
    reponse.status(402).json(result.data);
    console.log(result.data);
  } catch (error) {
    console.log(error);
  }
};
// #endregion ZaloPayModule

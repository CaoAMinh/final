import express from "express";
import {
  getAllPayment,
  paymentZalo,
  callbackZalo,
  oderStatus,
} from "./payment.controller";

export const paymentRouter = express.Router();

paymentRouter.route("/getAllPayment").get(getAllPayment);

paymentRouter.post("/with-zalo", paymentZalo);
paymentRouter.post("/callback-zalo", callbackZalo);
paymentRouter.post("/oders-tatus-zalo/:app_trans_id", oderStatus);

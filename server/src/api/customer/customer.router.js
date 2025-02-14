import express from "express";
import customerController from "./customer.controller";
import authenticateJWT from "../../middleware/verify_token";

export const customerRouter = express.Router();

customerRouter.route("/register").post(customerController.addUser);
customerRouter.route("/getUserByEmailId").get(customerController.findUser);
customerRouter.route("/login").post(customerController.login);
customerRouter.route("/auth").get(authenticateJWT, customerController.auth);
customerRouter.route("/list").get(customerController.getAllCustomer);
customerRouter.route("/update").post(customerController.getCustomerUpdate);
customerRouter.route("/delete").delete(customerController.deleteCustomer);

customerRouter.route("/forget").post(customerController.forgetPassword);
customerRouter.route("/verify").post(customerController.verifyOTP);
customerRouter
  .route("/editUser")
  .put(authenticateJWT, customerController.editUser);

customerRouter
  .route("/voucher")
  .get(authenticateJWT, customerController.getVoucherCustomer);
customerRouter
  .route("/voucher/has")
  .get(authenticateJWT, customerController.getVoucherCustomer2);
customerRouter
  .route("/voucher")
  .post(authenticateJWT, customerController.postVoucherCustomer);
customerRouter
  .route("/voucher")
  .put(authenticateJWT, customerController.putVoucherCustomer);
customerRouter
  .route("/voucher")
  .delete(authenticateJWT, customerController.deleteVoucherCustomer);

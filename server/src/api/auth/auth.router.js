import express from "express";
import authController from "./auth.controller";

export const authRouter = express.Router();
authRouter.route("/register").post(authController.addUser);
authRouter.route("/user/getAllUserList").get(authController.getAllUserList);
authRouter.route("/user/update").post(authController.userUpdate);
authRouter.route("/user/delete").post(authController.deleteUserList);
authRouter.route("/info").get(authController.findUser);
authRouter.route("/rootLogin").post(authController.login);

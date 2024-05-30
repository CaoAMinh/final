import express from "express";
import {
  addId,
  deleteId,
  deleteIdALl,
  editId,
  findAll,
  findId,
} from "./cart.controller";
import authenticateJWT from "../../middleware/verify_token";
export const cartRouter = express.Router();
cartRouter.route("/create").post(authenticateJWT, addId);
cartRouter.route("/").get(findAll);
cartRouter.route("/id").get(authenticateJWT, findId);
cartRouter.route("/edit").put(authenticateJWT, editId);
cartRouter.route("/delete").delete(authenticateJWT, deleteId);
cartRouter.route("/deleteAll").delete(authenticateJWT, deleteIdALl);

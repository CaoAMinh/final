import express from "express";
import orderController from "./order.controller";

export const orderRouter = express.Router();
orderRouter.route("/create").post(orderController.index);
orderRouter.route("/list").get(orderController.getAllOrderList);
orderRouter.route("/listss").get(orderController.getAllOrderListsss);
orderRouter.route("/lists").get(orderController.getAllProductionOrder);
orderRouter.route("/status/update").post(orderController.statusUpdate);
orderRouter.route("/list").post(orderController.getAllOrderListById);
orderRouter.route("/status").post(orderController.getAllOrderStatus);
orderRouter.route("/count").get(orderController.getAllOrderCount);

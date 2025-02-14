import { db } from "../models";
import moment from "moment";

const cron = require("node-cron");

const checkExpiredVouchers = cron.schedule("* * * * *", async () => {
  try {
    const vouchers = await db.voucher.findAll();
    const vouchersSchedule = await db.voucherschedule.findAll();
    vouchersSchedule.forEach(async (v) => {
      const expireDate = new Date(v.date_end);
      const currentDate = new Date();
      if (expireDate.getTime() < currentDate.getTime()) {
        // Nếu voucher đã hết hạn, xóa voucher khỏi cơ sở dữ liệu
        await db.voucherschedule.destroy({
          where: {
            id: v.id,
          },
        });
      }
    });
    vouchers.forEach(async (v) => {
      const expireDate = new Date(v.expire);
      const currentDate = new Date();

      // So sánh ngày hết hạn với ngày hiện tại
      if (expireDate.getTime() < currentDate.getTime()) {
        // Nếu voucher đã hết hạn, xóa voucher khỏi cơ sở dữ liệu
        await db.voucher.destroy({
          where: {
            id: v.id,
          },
        });
      }
    });
  } catch (error) {
    console.error("Error in cron job:", error);
  }
});

checkExpiredVouchers.start();

export default checkExpiredVouchers;

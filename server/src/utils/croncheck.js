import cron from "node-cron";
import { db } from "../models";
import { Op } from "sequelize";
const scheduleCronJob = () => {
  cron.schedule("*/2 * * * *", async () => {
    try {
      const expiredOtps = await db.Otp.findAll({
        where: {
          expiresAt: { [Op.lte]: new Date() }, // Tìm các bản ghi có thời gian hết hạn nhỏ hơn hoặc bằng thời gian hiện tại
        },
      });
      // Xóa các bản ghi OTP hết hạn
      await db.Otp.destroy({
        where: {
          id: expiredOtps.map((otp) => otp.id), // Lấy danh sách id của các bản ghi hết hạn để xóa
        },
      });
      console.log(`Deleted ${expiredOtps.length} expired OTPs.`);
    } catch (error) {
      console.error("Error deleting expired OTPs:", error);
    }
  });
};
export default scheduleCronJob;

import "dotenv/config";
import { db } from "./models";
import { restRouter } from "./api";
import config from "./config";
import appManager from "./app";
import "./errors";
import scheduler from "./utils/scheduler";
import path from "path";
import cors from "cors";
import checkExpiredVouchers from "./utils/cronjob";
import scheduleCronJob from "./utils/croncheck";
global.appRoot = path.resolve(__dirname);
// import kue from './kue';
const PORT = config.app.port;
const app = appManager.setup(config);

/*cors handling*/
app.use(
  cors({
    origin: true,
    credentials: true,
  })
);
app.options("*", cors());

app.use("/api", restRouter);
app.get("/", (req, res) => {
  res.send("Hello");
});
app.use((error, req, res, next) => {
  if (!(error instanceof RequestError)) {
    error = new RequestError("Some Error Occurred", 500, error.message);
  }
  error.status = error.status || 500;
  res.status(error.status);
  let contype = req.headers["content-type"];
  var json = !(!contype || contype.indexOf("application/json") !== 0);
  if (json) {
    return res.json({ errors: error.errorList });
  } else {
    res.render(error.status.toString(), { layout: null });
  }
});

db.sequelize
  .authenticate()
  .then(function () {
    scheduler.init();
  })
  .catch(function (err) {
    console.log(err, "Something went wrong with the Database Update!");
  });

scheduleCronJob();
checkExpiredVouchers.start();

app.listen(PORT, () => {
  console.log(`Server is running at PORT http://localhost:${PORT}`);
});

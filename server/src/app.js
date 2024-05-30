import express from "express";
import path from "path";
import passport from "passport";
import session from "express-session";
import bodyParser from "body-parser";
import cookieParser from "cookie-parser";
import expressSanitizer from "express-sanitizer";
import helmet from "helmet";

import "./utils/passport";

export default {
  setup: (config) => {
    const app = express();

    // app.set("view engine", "html");
    app.use(bodyParser.urlencoded({ extended: true }));
    app.use(bodyParser.json({ limit: "50mb" }));

    app.use(cookieParser(config.app.secret));
    app.use(
      session({
        secret: config.app.secret,
        resave: true,
        saveUninitialized: true,
      })
    );
    app.use("/photo", express.static(path.join(__dirname, "public/images")));
    app.use(passport.initialize());
    app.use(passport.session());
    app.use(expressSanitizer());
    app.use(helmet());
    app.use(
      helmet.hsts({
        maxAge: 0,
      })
    );

    Number.prototype.pad = function (size) {
      var s = String(this);
      while (s.length < (size || 2)) {
        s = "0" + s;
      }
      return s;
    };

    return app;
  },
};

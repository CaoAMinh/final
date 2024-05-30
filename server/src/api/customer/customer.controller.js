import { db } from "../../models";
import JWT from "jsonwebtoken";
import { validateEmail } from "../../utils/functions";
import mailer from "../../utils/mailer";
import md5 from "md5";
import bcrypt from "bcrypt";
export default {
  async editUser(request, response) {
    try {
      const { password } = request.body;
      console.log(request.body);
      const passwordHash = md5(password);
      response.json({ msg: true });
      const user = await db.customer.findOne({ where: { email: email } });
      if (!user) {
        return response.json({ msg: "User invalid!" });
      }
      console.log(user);
      user.password = passwordHash;
      await user.save();
      return response.json({ msg: "Update password successfully!" });
    } catch (error) {
      // return response
      //   .status(401)
      //   .json({ error: "we can't send otp your email!" });
    }
  },

  async forgetPassword(request, response) {
    try {
      const { email } = request.body;

      const user = await db.customer.findOne({ where: { email: email } });

      const sendOTP = await mailer.sendOtpverifyEmail(user.id, user.email);
      if (sendOTP) {
        return response
          .status(201)
          .json({ data: "we are sending otp your email!" });
      }
    } catch (error) {
      return response
        .status(401)
        .json({ error: "we can't send otp your email!" });
    }
  },
  async verifyOTP(request, response) {
    try {
      const { email, otp } = request.body;
      console.log(request.body);

      const user = await db.customer.findOne({ where: { email: email } });
      if (!user) {
        return response.status(401).json({ error: "Email does not exist!" });
      }
      const otpRecord = await db.Otp.findOne({ where: { userId: user.id } });
      if (!otpRecord) {
        return response.status(401).json({ error: "OTP not found!" });
      }

      const currentTime = new Date();
      const expirationTime = new Date(otpRecord.expiresAt);

      if (currentTime >= expirationTime) {
        return response.status(401).json({ error: "OTP has expired!" });
      }

      const isMatch = await bcrypt.compare(otp.toString(), otpRecord.otp);
      console.log(isMatch);
      if (!isMatch) {
        return response.status(401).json({ error: "Incorrect OTP!" });
      }
      await db.Otp.destroy({
        where: { authId: user.id },
        truncate: true,
      });
      const token = JWT.sign(
        {
          id: user.id,
          email: user.email,
          name: user.lastName,
        },
        process.env.JWT_SECRET
      );
      return response.status(200).json({ data: true, token: token });
    } catch (error) {
      return response.status(502).json({ error: error.message });
    }
  },

  async addUser(req, res, next) {
    const { firstName, email, password } = req.body;
    const passwordHash = md5(password);
    console.log(firstName, email, password);
    db.customer
      .findOne({ where: { email: email }, paranoid: false })
      .then((find) => {
        if (find) {
          return res
            .status(203)
            .json({ success: false, id: "Email is already in use" });
        }
        db.customer
          .create({
            firstName: firstName,
            email: email,
            password: passwordHash,
          })
          .then((newCustomer) => {
            if (newCustomer) {
              console.log(newCustomer);
              return res
                .status(200)
                .json({ success: true, id: newCustomer.id });
            }
          })
          .catch((err) => {
            res.json({ err: err });
            console.log(err);
          });
      })
      .catch((err) => {
        console.log(err);
        next(err);
      });
  },

  async findUser(req, res, next) {
    db.customer
      .findOne({
        where: { email: req.query.email },
        paranoid: false,
        include: [{ model: db.Address }],
      })
      .then((user) => {
        if (user) {
          return res.status(200).json({ success: true, data: user });
        } else res.status(500).json({ success: false });
      })
      .catch((err) => {
        console.log(err);
        next(err);
      });
  },

  async auth(req, res) {
    try {
      res.json(req.user);
    } catch (error) {
      res.json(error);
    }
  },

  async login(req, res, next) {
    const { email, password } = req.body;
    const passwordHash = md5(password);
    const findUser = await db.customer.findOne({
      where: { email, password: passwordHash },
    });
    const findAdmin = await db.user.findOne({
      where: { email, password: passwordHash },
    });
    if (findUser) {
      console.log(findUser);
      const token = JWT.sign(
        {
          id: findUser.dataValues.id,
          email: findUser.email,
          name: findUser.lastName,
        },
        process.env.JWT_SECRET
      );

      return res.status(200).json({ success: true, token, findUser });
    } else if (findAdmin) {
      const token = JWT.sign(
        {
          id: findAdmin.dataValues.id,
          email: findAdmin.email,
          name: findAdmin.lastName,
        },
        process.env.JWT_SECRET
      );
      return res.status(200).json({ success: true, token, findAdmin });
    } else {
      return res.status(200).json({ success: false });
    }
  },

  async rootUserCheck(req, res) {
    if (validateEmail(req.body.email)) {
      db.user
        .findOne({
          where: {
            email: req.body.email,
          },
        })
        .then((user) => {
          if (user)
            return res.status(200).json({
              success: true,
              redirect: false,
              email: req.body.email,
            });
          return res.status(401).json({
            success: false,
            redirect: false,
            msg: "Jankpur Grocerry account with that sign-in information does not exist. Try again or create a new account.",
          });
        });
    }
  },

  async resetPassword(req, res) {
    const { email, verificationCode, password } = req.body;
    db.user
      .findOne({
        where: { email: email, verf_key: verificationCode },
      })
      .then((result) => {
        if (result) {
          const hash = md5(password);
          db.user.update(
            { password: hash, verf_key: null, attempt: 0, isVerify: 1 },
            { where: { email: email } }
          );
          return res.status(200).json({ success: true });
        } else {
          return res
            .status(500)
            .json({ errors: ["Invalid verification code!"] });
        }
      })
      .catch((err) => {
        console.log(err);
        return res.status(500).json({ errors: ["Error Updating Password!"] });
      });
  },

  async getAllCustomer(req, res, next) {
    db.customer
      .findAll()
      .then((user) => {
        if (user) {
          return res.status(200).json({ success: true, data: user });
        } else res.status(500).json({ success: false });
      })
      .catch((err) => {
        console.log(err);
        next(err);
      });
  },

  async deleteCustomer(req, res, next) {
    try {
      db.customer
        .findOne({ where: { id: parseInt(req.query.id) } })
        .then((customer) => {
          if (customer) {
            return db.customer.destroy({ where: { id: customer.id } });
          }
          throw new RequestError("Customer is not found");
        })
        .then((re) => {
          return res
            .status(200)
            .json({ msg: "success", status: "deleted Customer Seccessfully" });
        })
        .catch((err) => {
          next(err);
        });
    } catch (err) {
      throw new RequestError("Error");
    }
  },

  //Api customer update
  async getCustomerUpdate(req, res, next) {
    try {
      const { id, firstName, lastName, phone, gender } = req.body.data;
      db.customer
        .findOne({ where: { id: id } })
        .then((customer) => {
          if (customer) {
            return db.customer.update(
              {
                firstName: firstName,
                lastName: lastName,
                phone: phone,
                gender: gender,
              },
              { where: { id: customer.id } }
            );
          }
          throw new RequestError("Customer is not found");
        })
        .then((re) => {
          return res
            .status(200)
            .json({ msg: "success", status: "deleted Customer Seccessfully" });
        })
        .catch((err) => {
          next(err);
        });
    } catch (err) {
      throw new RequestError("Error");
    }
  },
  async getVoucherCustomer(req, res, next) {
    console.log(req.user);
    const { id } = req.body;
    db.vouchercustomer
      .findAll({ where: { customerId: id } })
      .then((data) => res.status(200).json({ ok: true, data }))
      .catch((e) => next(e));
  },
  async getVoucherCustomer2(req, res, next) {
    try {
      const { id } = req.user;
      console.log(req.user);
      const data = await db.sequelize.query(
        `SELECT vouchers.*, vouchercustomers.is_use AS is_use FROM vouchers INNER JOIN vouchercustomers ON vouchercustomers.voucherId = vouchers.id INNER JOIN customers ON customers.id = vouchercustomers.customerId WHERE customers.id= ${id}`
      );
      return res.status(200).json({ ok: true, data });
    } catch (error) {
      res.status(501).json({ msg: error });
    }
  },
  async postVoucherCustomer(req, res, next) {
    const { id } = req.user;
    const { voucherId } = req.body;
    db.vouchercustomer.create({ ...req.body, customerId: id, is_use: false });
    return res.status(200).json({ ok: true });
  },
  async putVoucherCustomer(req, res, next) {
    const { id } = req.user;
    const { voucherId } = req.body;
    db.vouchercustomer.update(
      { is_use: true },
      {
        where: {
          voucherId,
          customerId: id,
        },
      }
    );
    return res.status(200).json({ ok: true });
  },

  async deleteVoucherCustomer(req, res, next) {
    const { id } = req.user;
    const { voucherId } = req.body;
    db.vouchercustomer.destroy({
      where: {
        ...req.body,
        customerId: id,
      },
    });
    return res.status(200).json({ ok: true });
  },
};

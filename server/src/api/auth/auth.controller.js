import { db } from "../../models";
import JWT from "jsonwebtoken";
import md5 from "md5";

export default {
  async addUser(req, res, next) {
    const {
      firstName,
      lastName,
      phoneNo,
      email,
      address,
      password,
      role,
      verify,
    } = req.body;

    try {
      const passwordHash = md5(password);

      const existingUser = await db.user.findOne({
        where: { email: email },
        paranoid: false,
      });

      if (existingUser) {
        return res
          .status(203)
          .json({ success: false, message: "Email is already in use" });
      }

      await db.user.create({
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNo: phoneNo,
        address: address,
        password: passwordHash,
        verify: verify,
        role: role,
      });

      return res.json({ success: true, message: "Register successfully!" });
    } catch (err) {
      console.log(err);
      next(err);
    }
  },

  async findUser(req, res, next) {
    db.user
      .findOne({
        attributes: ["firstName", "lastName", "email"],
        where: { id: req.query.user_id },
      })
      .then((user) => {
        if (user) {
          return res.status(200).json({ success: true, data: user, ok: true });
        } else res.status(500).json({ success: false });
      })
      .catch((err) => {
        console.log(err);
        next(err);
      });
  },

  async getAllUserList(req, res, next) {
    db.user
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

  async userUpdate(req, res, next) {
    const { id, firstName, lastName, email, address, password, role, verify } =
      req.body;
    var passwordHash = md5(password);
    db.user
      .findOne({ where: { email: email }, paranoid: false })
      .then((user) => {
        if (!user) {
          throw new RequestError("User is not found", 409);
        }
        return db.user.update(
          {
            firstName: firstName ? firstName : user.firstName,
            lastName: lastName ? lastName : user.lastName,
            password: password ? passwordHash : user.passwordHash,
            address: address ? address : user.address,
            role: role ? role : user.role,
            verify: verify ? verify : user.verify,
          },
          { where: { id: id } }
        );
      })
      .then((user) => {
        if (user) {
          return res
            .status(200)
            .json({ success: true, msg: "User update successsfully" });
        } else res.status(500).json({ success: false });
      })
      .catch((err) => {
        console.log(err);
        next(err);
      });
  },

  async login(req, res, next) {
    const { email, password } = req.body;

    const findUser = await db.user.findOne({
      where: { email, password: md5(password) },
    });
    if (findUser) {
      const token = JWT.sign(
        { uid: findUser.dataValues.id, id: findUser.dataValues.id },
        process.env.JWT_SECRET
      );
      return res.status(200).json({
        success: true,
        token,
        auid: findUser.dataValues.id,
        role: findUser.dataValues.role,
      });
    } else {
      return res.status(200).json({ success: false });
    }
  },

  async deleteUserList(req, res, next) {
    db.user
      .findOne({ where: { id: req.body.id } })
      .then((data) => {
        if (data) {
          return db.user
            .destroy({ where: { id: req.body.id } })
            .then((r) => [r, data]);
        }
        throw new RequestError("User is not found", 409);
      })
      .then((re) => {
        return res
          .status(200)
          .json({ status: "deleted userlist Seccessfully" });
      })
      .catch((err) => {
        next(err);
      });
  },
};

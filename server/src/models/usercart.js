"use strict";
module.exports = (sequelize, DataTypes) => {
  const userCart = sequelize.define(
    "userCart",
    {
      userId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
          model: "customers",
          key: "id",
        },
      },
      productId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
          model: "products",
          key: "id",
        },
      },
      quantity: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
      },
      unitSize: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      active: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
    },
    { timestamps: false }
  );

  userCart.associate = function (models) {
    userCart.belongsTo(models.customer, {
      foreignKey: "userId",
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
    userCart.belongsTo(models.product, {
      foreignKey: "productId",
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  };

  return userCart;
};

module.exports = (sequelize, DataTypes) => {
  const Otp = sequelize.define(
    "Otp",
    {
      otp: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      expiresAt: {
        type: DataTypes.DATE,
        allowNull: false,
      },
    },
    {
      createdAt: false,
      updatedAt: false,
    }
  );
  Otp.associate = function (models) {
    Otp.belongsTo(models.customer, {
      foreignKey: "userId",
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  };
  return Otp;
};

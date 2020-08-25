module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("data_malay_ver3", {
        lat: {
            type: Sequelize.DOUBLE
        },
        long: {
            type: Sequelize.DOUBLE
        },
        cases: {
            type: Sequelize.INTEGER
        }
    });

    return User;

};
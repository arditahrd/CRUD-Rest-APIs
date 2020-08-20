module.exports = (sequelize, Sequelize) => {
    const Malay = sequelize.define("data_malay_ver3", {
        province: {
            type: Sequelize.STRING
        },
        lat: {
            type: Sequelize.DOUBLE
        },
        long: {
            type: Sequelize.DOUBLE
        },
        cases: {
            type: Sequelize.INTEGER
        },
        date: {
            type: Sequelize.DATE
        },
        streetname: {
            type: Sequelize.STRING
        },
        city: {
            type: Sequelize.STRING
        },
        country: {
            type: Sequelize.STRING
        },
        countrycode: {
            type: Sequelize.STRING
        },
        zipcode: {
            type: Sequelize.INTEGER        }
    });

    return Malay;
};
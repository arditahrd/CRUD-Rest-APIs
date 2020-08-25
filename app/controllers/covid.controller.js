const db = require("../models");
const NodeGeocoder = require('node-geocoder');
const Malay = db.malay;
const User = db.users;
const Op = db.Sequelize.Op;

//config apikey geocoder
const mapOptions = {
    provider: 'google',
    apiKey: 'AIzaSyBRAnJsQlQEKOgsCNfp_bmBKWsBbN1fEu0',
    formatter: null,
};

//create geocoder constanta from NodeGeocoder
const geocoder = NodeGeocoder(mapOptions);

//find all data
exports.findAll = (req, res) => {
    //retrive all data from database
    Malay.findAll()
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred"
            });
        });
}

//create
exports.create = (req, res) => {
    //input model
    const input = {
        province: null,
        lat: req.body.lat,
        long: req.body.long,
        cases: req.body.cases,
        date: null,
        streetname: null,


    }

    //geocoder
    geocoder.geocode(input.lat + ', ' + input.long, async function (err, result) {
        //await res.json(result);
        input.streetname = result[0].formattedAddress;
        input.province = result[0].administrativeLevels.level1long;
        input.city = result[0].city;
        input.country = result[0].country;
        input.countrycode = result[0].countryCode;
        input.zipcode = result[0].zipcode;
        res.json(input);

        Malay.create(input).then(data => {
            //res.send(data);
        });
    });
}

exports.deleteById = (req, res) => {
    const id = req.params.id;

    Malay.destroy({ where: { id: id } }).then(num => {
        if (num == 1) {
            res.send({
                message: "Data was deleted successfully!"
            });
        } else {
            res.send({
                message: `Cannot delete Data with id=${id}. Maybe Data was not found!`
            });
        }
    }).catch(err => {
        res.status(500).send({
            message: "Could not delete Data with id=" + id
        });
    });
}

//findSpecificId
exports.findOneData = (req, res) => {
    const id = req.params.id;

    Malay.findAll({ where: { id: id } })
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred"
            });
        });
}

//update Specific ID
exports.update = (req, res) => {
    const id = req.params.id;

    Malay.update(req.body, {
        where: { id: id }
    }).then(num => {
        if (num == 1) {
            res.send({
                message: "Data was updated successfully."
            });
        } else {
            res.send({
                message: `Cannot update Data with id=${id}. Maybe Data was not found or req.body is empty!`
            });
        }
    })
        .catch(err => {
            res.status(500).send({
                message: "Error updating Data with id=" + id
            });
        });
}
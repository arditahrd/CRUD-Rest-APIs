module.exports = app => {
    const covid19 = require("../controllers/covid.controller.js");
    var router = require("express").Router();

    //Retrieve all covid19
    router.get("/", covid19.findAll);
   
    //Create a new Tutorial
    router.post("/", covid19.create);

    // //Retrieve all published covid19
    // router.get("/published", covid19.findAllPublished);

    //Retrieve a single Tutorial with id
    router.get("/:id", covid19.findOneData);

    //Update a Tutorial with id
    router.put("/:id", covid19.update);

    //Delete a Tutorial with id
    router.delete("/:id", covid19.deleteById);

    // //Create a new Tutorial
    // router.delete("/", covid19.deleteAll);

    app.use('/api/malay', router);
};
const Route = require("route");
const { respond, logInfo, uuid, composeResult } = require("lib");
const createUsersQuery = require("resources/users/queries/create-user-query.js");
const db = require("db/repository.js");
const CreateUserValidator = require('../validators/create-user-validator');
const bcrypt = require('bcryptjs');

async function get(req) {
    const { name,email,profilePic } = req.body;
    var {password} = req.body ;
    const id = uuid.v4();
    logInfo("Request to create users api ", {name,email,password,profilePic });

    const response = await composeResult(
        async ()=>{
            password = await bcrypt.hash(password,10);
            return db.create(new createUsersQuery({ id, name,email,password,profilePic }))
        },
        (userDetails)=>CreateUserValidator.validate(userDetails)
    )({name,email,password,profilePic});

    return respond(response, "Successfully create users!", "Failed to create users!");
}

Route.withOutSecurity().noAuth().post("/users", get).bind();

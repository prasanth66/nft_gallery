const Route = require("route");
const { respond, logInfo } = require("lib");
const GetUserQuery = require("resources/users/queries/get-user-query");
const db = require("db/repository.js");
const composeResult = require("@mvp-rockets/namma-lib/src/lib/utilities/compose-result");
async function get(req,res) {
    const {email,password} = req.body;
    logInfo("Request to get user api ", {email,password});
    //const result = await db.findOne(new GetUserQuery({email}));
    const response = await composeResult(
        (user)=>{
            console.log(user);
        },
        async()=> await db.findOne(new GetUserQuery({email}))
    )({email,password});
    return respond(response, "Successfully get user!", "Failed to get user!");
}

Route.withOutSecurity().noAuth().post("/user", get).bind();

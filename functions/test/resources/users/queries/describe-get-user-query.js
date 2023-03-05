const chai = require('chai');
const { verifyResultOk } = require('helpers/verifiers');
const db = require('db/repository');
const ds = require('helpers/dataSetup');
const GetUserQuery = require('resources/users/queries/get-user-query');


const { expect } = chai;

describe("get user query",()=>{
    let user;
    beforeEach(async()=>{
        user = await ds.buildSingle(ds.user);
    });
    context("success scenario",()=>{
        it("should get user",async()=>{
            // await db.execute(new GetUserQuery({
            //     email: user.email,
            //     password: user.password,
            // }));
            // const fetchedUser = await db.findOne(new GetUserQuery({ where: { email: user.email,password:user.password }}));
            // verifyResultOk(
            //     (details) => {
            //         expect(details.id).to.eql(user.id);
            //         expect(details.name).to.eql(user.name);
            //         expect(details.email).to.eql(user.email);
            //         expect(details.password).to.eql(user.password);
            //         expect(details.profilePic).to.eql(user.profilePic);
            //     }
            // )(fetchedUser);
        })
    })

    context("failue scenario",()=>{
        it("should fail when invalid details provided",async()=>{
            await db.execute(new GetUserQuery({
                email: "",
                password: "",
            }));
        })
    })

    after(async () => {
        await ds.deleteAll();
    });
});
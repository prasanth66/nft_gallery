const chai = require("chai");
const { verifyResultOk } = require("helpers/verifiers");
const db = require("db/repository");
const ds = require("helpers/dataSetup");
const runQuery = require("data/run-query");
const createUserQuery = require("resources/users/queries/create-user-query");

const { expect } = chai;

describe("create user query", () => {
    let user;

    beforeEach(async () => {
        user = await ds.buildSingle(ds.user);
    
    });

    it("should create user", async () => {
        
        const createdUser = await db.execute(new createUserQuery({ id: user.id, name: user.name, email: user.email, password: user.password, profilePic: user.profilePic }));
    
        verifyResultOk((createdUser) => {
            expect(createdUser.dataValues.id).to.eql(user.id);
            expect(createdUser.dataValues.name).to.eql(user.name);
            expect(createdUser.dataValues.email).to.eql(user.email);
            expect(createdUser.dataValues.password).to.eql(user.password);
            expect(createdUser.dataValues.profilePic).to.eql(user.profilePic);
        })(createdUser);

        const fetchedUser = await db.execute(new runQuery('select * from public."users" where id=:id', { id: user.id }));

        verifyResultOk((fetchedUser) => {
            expect(fetchedUser.id).to.eql(user.id);
            expect(fetchedUser.name).to.eql(user.name);
            expect(fetchedUser.email).to.eql(user.email);
        })(fetchedUser);
    });


    after(async () => {
        await ds.deleteAll();
    });
});

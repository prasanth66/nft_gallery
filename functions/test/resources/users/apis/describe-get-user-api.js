const { HTTP_CONSTANT } = require("@mvp-rockets/namma-lib");
const { ApiError } = require("lib");
const chai = require("chai");
const sinon = require("sinon");
const sinonChai = require("sinon-chai");
const TestRoutes = require("helpers/test-route");
const db = require("db/repository");
const { resolveOk, resolveError } = require("helpers/resolvers");
const { verifyArgs } = require("helpers/verifiers");
const GetUserQuery = require("resources/users/queries/get-user-query");

const { expect } = chai;
chai.use(sinonChai);

describe.only("Get user api", () => {
    const sandbox = sinon.createSandbox();
    let req;
    let res;
    let result;
    beforeEach(() => {
        res = {
            setHeader: sandbox.spy(),
            send: sandbox.spy(),
            status: sandbox.spy(() => res),
        }
        req = {
            body:{
              password : "password",
              email : "prasanth@gmail.com",
            }
          }

        result = {
            count: 1,
            rows: [
                {
                    name: "check",
                    email: "check@gmail.com",
                    
                },
            ],
        }
    });

    it("should return user for a valid request", async () => {
        sandbox
            .mock(db)
            .expects("findOne")
            .withArgs(
                verifyArgs((query) => {
                    expect(query).to.be.instanceOf(GetUserQuery);
                })
            )
            .returns(resolveOk(result));

        const response = await TestRoutes.execute("/user", "Post", req);
        // expect(response).to.eql({
        //     status: true,
        //     message: "Successfully get user!",
        //     entity: result,
        // });
    });

    it("should return error when something goes wrong", async () => {
        sandbox.stub(db, "findOne").returns(resolveError("Something went wrong"));
        const response = await TestRoutes.executeWithError("/user", "Post", req, res);
        expect(response).to.eql(new ApiError("Something went wrong", "Failed to get user!", HTTP_CONSTANT.INTERNAL_SERVER_ERROR));
    });

    afterEach(() => {
        sandbox.verifyAndRestore();
    });
});

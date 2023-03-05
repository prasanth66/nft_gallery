const { HTTP_CONSTANT } = require("@mvp-rockets/namma-lib");
const { ApiError,ValidationError } = require("lib");

const chai = require("chai");
const sinon = require("sinon");
const sinonChai = require("sinon-chai");
const TestRoutes = require("helpers/test-route");
const db = require("db/repository");
const { resolveOk, resolveError } = require("helpers/resolvers");
const { verifyArgs } = require("helpers/verifiers");
const CreateUserValidator = require("resources/users/validators/create-user-validator.js")
const CreateUserQuery = require('resources/users/queries/create-user-query.js');
const { expect } = require("chai");
// const uuid = require('uuid');


describe("create users api",()=>{
    const sandbox = sinon.createSandbox();
    let req, res,id,userEntity,user;
    beforeEach(async()=>{
        // id = uuid.v4(),
        // sandbox.stub(uuid, 'v4').returns(id),
        res = {
            setHeader: sandbox.spy(),
            send: sandbox.spy(),
            status: sandbox.spy(() => res),
        },
         req = {
            body:{
              name : "prasanth",
              password : "password",
              email : "prasanth@gmail.com",
              profilePic: "https://profile/photo.jpeg"
            }
          }
          userEntity = {
            name : "prasanth",
            password : "password",
            email : "prasanth@gmail.com",
            profilePic: "https://profile/photo.jpeg"
          }
    });

    context("success scenario",()=>{
        it("should create new user when all details are provided",async()=>{
            sandbox.mock(CreateUserValidator)
            .expects('validate')
            .withArgs(verifyArgs((args)=>{
                expect(args).to.eql(req.body)
            }))
            .returns(resolveOk());

            sandbox.mock(db)
                .expects("create")
                .withArgs(verifyArgs((args)=>{
                    expect(args).to.be.instanceOf(CreateUserQuery);
                    expect(args.details).to.be.contains({
                        name : "prasanth",
                        email : "prasanth@gmail.com",
                    })
                }))
                .returns(resolveOk(userEntity));

           const response = await TestRoutes.execute('/users',"Post",req,res);
            expect(response).to.be.eql({
                status:true,
                message : "Successfully create users!",
                entity:userEntity
            });
        });
       
    })

    context("failure scenario",()=>{
        it("should fail when something goes wrong",async()=>{
            sandbox.mock(db).expects('create').returns(resolveError('some error'));
            const response = await TestRoutes.executeWithError('/users',"Post",req,res);
            expect(response).to.eql(new ApiError("some error","Failed to create users!"));
        });

        it("should fail when validations is failed",async()=>{
            sandbox.mock(CreateUserValidator).expects('validate').returns(resolveError('Validation error'));
             const response = await TestRoutes.executeWithError('/users',"Post",req,res);
             expect(response).to.be.eql(new ApiError("Validation error","Failed to create users!"));
        });

    });

    afterEach(async () => {
        sandbox.verifyAndRestore();
      });
});
const chai = require('chai');
const { expect } = chai;
const { verifyResultOk, verifyResultError } = require('helpers/verifiers');
const CreateUserValidator = require('resources/users/validators/create-user-validator.js');


describe("create user validator",()=>{
    it("should be valid when all data is provided",async()=>{
        const response = await CreateUserValidator.validate({
            email : "prasanth@gmail.com",
            name : "prasanth",
            password : "password"
        });
        verifyResultOk( ()=>{} )(response);
    });
    it('should fail when empty name is given',async()=>{
        const response = await CreateUserValidator.validate({name:""})
        
        verifyResultError(
            (error)=>{
                expect(error.error).to.include('name is mandatory!');
            }
        )(response);
    });
    it('should fail when empty email is given',async()=>{
        const response = await CreateUserValidator.validate({})
        
        verifyResultError(
            (error)=>{
                expect(error.error).to.include('Enter a valid email!');
            }
        )(response);
    });
    it('should fail when empty password is given',async()=>{
        const response = await CreateUserValidator.validate({})
        
        verifyResultError(
            (error)=>{
                expect(error.error).to.include('password is mandatory!');
            }
        )(response);
    });
    it('should fail when empty password is less than 6 chars',async()=>{
        const response = await CreateUserValidator.validate({password:"pass"})
        
        verifyResultError(
            (error)=>{
                expect(error.error).to.include('password length should be minimun 6 chars');
            }
        )(response);
    });
});
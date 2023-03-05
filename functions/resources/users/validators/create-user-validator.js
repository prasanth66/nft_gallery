const {validate, notEmpty, isMobileNumber, optional, isEmail} = require('validation');

const rule = {
    name : [[notEmpty, 'name is mandatory!']],
    email: [[isEmail,"Enter a valid email!"]],
    password : [
        [notEmpty,"password is mandatory!"],
        [
            (value,obj)=>{return (value && value.length>=6)},"password length should be minimun 6 chars"
        ]
    ],
}


module.exports.validate = async data => validate(rule, data);
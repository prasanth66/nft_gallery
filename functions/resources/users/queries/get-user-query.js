const { User } = require('models');
module.exports = class GetUserQuery {

    constructor(email){
        this.details = {email}
    }
    get() {
        return User.findOne(this.details);
    }
}
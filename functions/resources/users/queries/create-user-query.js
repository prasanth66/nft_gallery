const Models = require("models");

module.exports = class CreateUserQuery {
    constructor(details) {
        this.details = details;
    }

    get() {
        return Models.User.create(this.details);
    }
};

const { factory } = require("factory-girl");

const loadFactory = async () => {
    factory.define("user", Object, {
        id: factory.chance("guid"),
        name: factory.chance("name"),
        email: factory.chance("email"),
        password: factory.chance("name"),
        profilePic: factory.chance("url"),
    });
};

module.exports.factory = factory;
module.exports.loadFactory = loadFactory;

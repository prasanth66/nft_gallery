const { factory } = require("factory-girl");

const loadDbFactory = async () => {
    factory.define("GetUsersQuery", Array, {
        id: factory.chance("guid"),
        name: factory.chance("name"),
    });
};

module.exports.dbFactory = factory;
module.exports.loadDbFactory = loadDbFactory;

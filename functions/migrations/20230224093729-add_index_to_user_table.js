'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
   await queryInterface.addIndex('users',['email'])
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.removeIndex('users',['email'])
  }
};

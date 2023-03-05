'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
   await queryInterface.addColumn('users','email',{
      type: Sequelize.STRING,
      allowNull: false,
      unique : true,
   }),
   await queryInterface.addColumn('users','password',{
    type: Sequelize.STRING,
    allowNull: false,
  }),
  await queryInterface.addColumn('users','profilePic',{
    type: Sequelize.STRING,
  })

  },

  async down (queryInterface, Sequelize) {
    queryInterface.removeColumn('users','email'),
    queryInterface.removeColumn('users','password'),
    queryInterface.removeColumn('users','profilePic')
  }
};

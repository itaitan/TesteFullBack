'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('Produtos', [{
        nome: 'Escova',
        preco: 5.5,
        quantidade: 4,
        descricao: 'teste1',
        createdAt: new Date(),
				updatedAt: new Date()
      },
      {
        nome: 'Perfume',
        preco: 10,
        quantidade: 1,
        descricao: 'teste2',
        createdAt: new Date(),
				updatedAt: new Date()
      },
      {
        nome: 'carro',
        preco: 5000,
        quantidade: 2,
        descricao: 'teste3',
        createdAt: new Date(),
				updatedAt: new Date()
      },
      {
        nome: 'teclado',
        preco: 16.5,
        quantidade: 3,
        descricao: 'teste4',
        createdAt: new Date(),
				updatedAt: new Date()
      },
      {
        nome: 'mouse',
        preco: 300,
        quantidade: 5,
        descricao: 'teste5',
        createdAt: new Date(),
				updatedAt: new Date()
      }], {});
    
  },

  async down (queryInterface, Sequelize) {
     await queryInterface.bulkDelete('Produtos', null, {});
     
  }
};

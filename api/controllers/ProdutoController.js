const database = require("../models");

class ProdutoController {
  static async listProdutos(req, res) {
    try {
      const allProdutos = await database.Produto.findAll();
      return res.status(200).json(allProdutos);
    } catch (error) {
      return res.status(500).json(error.message);
    }
  }

  static async listPorID(req, res) {
    const { id } = req.params;
    try {
      const listId = await database.Produto.findOne({
        where: { id: Number(id) },
      });
      return res.status(200).json(listId);
    } catch (error) {
      return res.status(500).json(error.message);
    }
  }

  static async createProduto(req, res) {
    const novoProduto = req.body;

    let comprimetoNome = novoProduto.nome.length;
    let comprimentoDescricao = novoProduto.descricao.length;

    try {
      if (
        comprimetoNome <= 40 &&
        comprimentoDescricao <= 100 &&
        Number(novoProduto.preco) &&
        Number(novoProduto.quantidade)
      ) {
        await database.Produto.create(novoProduto);
        return res.status(200).json({ mensagem: `Produto Criado` });
      } else {
        return res.status(500).json({
          mensagem: `O cadastro não foi finalizado verificar os preenchimentos`,
        });
      }
    } catch (error) {
      return res.status(500).json(error.message);
    }
  }
  static async updateProduto(req, res) {
    const { id } = req.params;
    const updateProduto = req.body;
    let comprimetoNome = updateProduto.nome.length;
    let comprimentoDescricao = updateProduto.descricao.length;

    try {
      if (
        comprimetoNome <= 40 &&
        comprimentoDescricao <= 100 &&
        Number(updateProduto.preco) &&
        Number(updateProduto.quantidade)
      ) {
        await database.Produto.update(updateProduto, {
          where: { id: Number(id) },
        });
        return res.status(200).json({ mensagem: `Produto Atualizado` });
      } else {
        return res.status(500).json({
          mensagem: `A atualização não foi finalizada verificar os preenchimentos`,
        });
      }
    } catch (error) {
      return res.status(500).json(error.message);
    }
  }

  static async deleteProduto(req, res) {
    const { id } = req.params;
    try {
      await database.Produto.destroy({
        where: { id: Number(id) },
      });
      return res.status(200).json({ mensagem: `Deletado com Sucesso` });
    } catch (error) {
      return res.status(500).json(error.message);
    }
  }
}

module.exports = ProdutoController;

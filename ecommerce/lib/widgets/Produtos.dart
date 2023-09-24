import 'package:ecommerce/categorias/Notebooks.dart';
import 'package:ecommerce/categorias/Smartphones.dart';
import 'package:ecommerce/categorias/Televisoes.dart';

class Produto {
  String nome;
  double preco;
  String descricao;
  String imagem;

  Produto(
      {required this.nome,
      required this.preco,
      required this.descricao,
      required this.imagem});
}


List<Produto> todosProdutos = [...televisoes, ...smartphones, ...notebooks];

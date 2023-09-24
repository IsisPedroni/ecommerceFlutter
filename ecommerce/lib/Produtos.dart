import 'package:ecommerce/Notebooks.dart';
import 'package:ecommerce/Smartphones.dart';
import 'package:ecommerce/Televisoes.dart';

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


List<Produto> todosProdutos = [...televisoes, ...smartphones, ...notebooks]


;

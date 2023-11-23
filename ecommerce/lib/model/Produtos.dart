import 'package:ecommerce/categorias/Notebooks.dart';
import 'package:ecommerce/categorias/Tecnologia.dart';
import 'package:ecommerce/categorias/Headphones.dart';


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


List<Produto> todosProdutos = [...headphones, ...tecnologia, ...notebooks];

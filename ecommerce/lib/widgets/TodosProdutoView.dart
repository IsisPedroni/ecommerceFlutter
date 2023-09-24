import 'package:ecommerce/Produtos.dart';
import 'package:flutter/material.dart';

class TodosProdutoView extends StatefulWidget {
  const TodosProdutoView({super.key});

  @override
  State<StatefulWidget> createState() {
    return TodosProduto();
  }
}

class TodosProduto extends State {
  List<Produto> produtos = todosProdutos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: produtos.length,
      itemBuilder: (context, index) {
        final produto = produtos[index];

        return InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFCFCFCF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(produto.imagem),
                Text(
                  produto.nome,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF343A40),
                    fontSize: 10,
                  ),
                ),
                Text(
                  '\$${produto.preco.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF343A40),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

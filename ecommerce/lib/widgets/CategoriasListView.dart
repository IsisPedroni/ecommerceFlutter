import 'package:ecommerce/categorias/Headphones.dart';
import 'package:ecommerce/categorias/Notebooks.dart';
import 'package:ecommerce/model/Produtos.dart';
import 'package:ecommerce/widgets/CategoriaSelecionada.dart';
import 'package:flutter/material.dart';

class CategoriasListView extends StatefulWidget {
  const CategoriasListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return CategoriaListView();
  }
}

class CategoriaListView extends State {
final List<String> categorias = [
    'Technology',
    'Notebooks',
    'Headphones',
    'Smartphone',
  ];

  String categoriaSelecionada = 'Technology'; // Categoria padrão
  late List<Produto> produtosDaCategoria;

  @override
  void initState() {
    super.initState();
    produtosDaCategoria = todosProdutos; 
  }

  void atualizarProdutosDaCategoria(String categoria) {
    setState(() {
      categoriaSelecionada = categoria;
      switch (categoria) {
        case 'Technology':
          produtosDaCategoria = todosProdutos;
          break;
        case 'Notebooks':
          produtosDaCategoria = notebooks;
          break;
        case 'Headphones':
          produtosDaCategoria = headphones;
          break;
        case 'Smartphone':
          //  Smartphone
          break;
      }
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoriaSelecionada(
          categoria: categoria,
          produtos: produtosDaCategoria,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: categorias.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final categoria = categorias[index];
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    atualizarProdutosDaCategoria(categoria);
                  },
                  child: Container(
                    width: categoria.length * 12.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color(0xFFCFCFCF),
                      ),
                      color: categoria == categoriaSelecionada
                          ? const Color(0xFFFF5500) 
                          : Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        categorias[index],
                        style:  TextStyle(
                          color: categoria == categoriaSelecionada
                              ? Colors.white
                              : const Color(0xFF343A40),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
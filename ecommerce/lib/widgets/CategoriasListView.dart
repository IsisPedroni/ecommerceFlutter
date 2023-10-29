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
    'Fashion',
    'Sports',
    'Smartphone',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: categorias.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categoria = categorias[index];
          return Padding(
            // REVER
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(
              onTap: () {},
              child: Container(
                  width:  categoria.length * 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xFFCFCFCF),
                    ),
                    color: Colors.white,
                    
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      categorias[index],
                      style: const TextStyle(
                          color: Color(0xFF343A40),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
            ),
          );
        },
      ),
    );
  }
}

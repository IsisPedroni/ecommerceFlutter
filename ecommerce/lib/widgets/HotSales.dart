import 'package:ecommerce/categorias/Notebooks.dart';
import 'package:ecommerce/widgets/Produtos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotSales extends StatefulWidget {
  const HotSales({super.key});

  @override
  State<StatefulWidget> createState() {
    return HotSalesListView();
  }
}

class HotSalesListView extends State {
  List<Produto> produtos = notebooks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Hot sales',
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 185, // Altura da lista horizontal
          child: ListView.builder(
            itemCount: produtos.length,
            scrollDirection:
                Axis.horizontal, // Define a direção como horizontal
            itemBuilder: (context, index) {
              final produto = produtos[index];

              return Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? 15 : 0, 12, 5, 10),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: const Color(0xFFEFEEED),
                    child: SizedBox(
                      width: 124, // Largura de cada card
                      // padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8, left: 10),
                                  child: Container(
                                    width: 70,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Free shopping',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFFFF5500),
                                        fontSize: 8,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Center(
                            child: Image.asset(
                              produto.imagem,
                              height: 80,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    produto.nome,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF343A40),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$${produto.preco}',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF343A40),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          )
                        ],
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

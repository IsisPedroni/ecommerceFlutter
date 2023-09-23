import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import '../widgets/BannerCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              // flex: 1, // Define a proporção do espaço ocupada pelo TextField
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products',
                    filled: true,
                    fillColor: const Color(0xFFE5E5E5),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(50.0), // Borda arredondada
                      borderSide: BorderSide.none, // Remove a cor da borda
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 68, 66, 66),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 50, // Largura do contêiner
              height: 50, // Altura do contêiner
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Forma circular
                color: Color(0xFFE5E5E5), // Cor do fundo cinza
              ),
              child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.view_list,
                color: Color.fromARGB(255, 68, 66, 66),
              ),
            ),
            ),
          ],
        ),
      ),
      body: const BannerCard(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}



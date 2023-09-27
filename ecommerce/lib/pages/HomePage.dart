import 'package:ecommerce/widgets/BannerCard.dart';
import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:ecommerce/widgets/CategoriasListView.dart';
import 'package:ecommerce/widgets/TodosProdutoView.dart';
import 'package:flutter/material.dart';
// import '../widgets/BannerCard.dart';

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
        elevation: 0,
        toolbarHeight: 70,
        // backgroundColor: const Color(0xFFF7F6F4),
        title: Row(
          children: [
            Expanded(
              // flex: 1, // Define a proporção do espaço ocupada pelo TextField
              child: Padding(
                padding: const EdgeInsets.only(right: 8,),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products',
                    hintStyle: const TextStyle(color: Color(0xFFCFCFCF),
                    fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(50.0), // Borda arredondada
                      borderSide: BorderSide.none, // Remove a cor da borda
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFCFCFCF),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 50, // Largura do contêiner
              height: 50, // Altura do contêiner
              decoration: const BoxDecoration(
                shape: BoxShape.circle, 
                color: Colors.white, 
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xFFCFCFCF),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const SizedBox(
        child: Column(
          children: [
            BannerCard(),
            CategoriasListView(),
            Expanded(child: TodosProdutoView())
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

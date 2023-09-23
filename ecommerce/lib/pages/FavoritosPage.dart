import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Favoritos();
  }
}

class Favoritos extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('em contrução'),
      ),
     bottomNavigationBar: const BottomNavBar(),
    );
  }
}

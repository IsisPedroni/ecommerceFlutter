import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return PerfilUsuario();
  }
}

class PerfilUsuario extends State {
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

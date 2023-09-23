import 'package:ecommerce/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SacolaComprasPage extends StatefulWidget {
  const SacolaComprasPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SacolaCompras();
  }
}

class SacolaCompras extends State {
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

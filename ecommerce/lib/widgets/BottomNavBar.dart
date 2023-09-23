import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return BottomNav();
  }
}

class BottomNav extends State {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.home,
                // color: Color(0xFFB6082F),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'FavoritosPage');
              },
              icon: const Icon(
                Icons.favorite,
                // color: Color(0xFFB6082F),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'SacolaComprasPage');
              },
              icon: const Icon(
                Icons.shopping_bag,
                // color: Color(0xFFB6082F),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'PerfilPage');
              },
              icon: const Icon(
                Icons.person,
                // color: Color(0xFFB6082F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

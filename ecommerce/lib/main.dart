import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/HomePage.dart';
import 'package:ecommerce/pages/FavoritosPage.dart';
import 'package:ecommerce/pages/PerfilPage.dart';
import 'package:ecommerce/pages/SacolaComprasPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        routes: {
          '/': (context) => const HomePage(),
          'FavoritosPage': (context) => const FavoritosPage(),
          'SacolaComprasPage': (context) => const SacolaComprasPage(),
          'PerfilPage': (context) => const PerfilPage(),
        });
  }
}

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
          colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(
            0xFFF7F6F4,
            <int, Color>{
              50: Color(0xFFF7F6F4),
              100: Color(0xFFF7F6F4),
              200: Color(0xFFF7F6F4),
              300: Color(0xFFF7F6F4),
              400: Color(0xFFF7F6F4),
              500: Color(0xFFF7F6F4),
              600: Color(0xFFF7F6F4),
              700: Color(0xFFF7F6F4),
              800: Color(0xFFF7F6F4),
              900: Color(0xFFF7F6F4),
            },
          ),
        ),
        ),
        routes: {
          '/': (context) => const HomePage(),
          'FavoritosPage': (context) => const FavoritosPage(),
          'SacolaComprasPage': (context) => const SacolaComprasPage(),
          'PerfilPage': (context) => const PerfilPage(),
        });
  }
}

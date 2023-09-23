import 'package:ecommerce/Categorias.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return Banner();
  }
}

class Banner extends State {
  int currentIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index; 
              });
            },
          ),
          items: [
            1,
            2,
            3,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  // width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.network(
                    'assets/images/$i.png',
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              IndicacaoPontosImg(
                activeColor: const Color.fromARGB(255, 68, 67, 67),
                inactiveColor: const Color(0xFFE5E5E5),
                isActive: i == currentIndex,
              ),
          ],
        ),
      ],
    );
  }
}

class IndicacaoPontosImg extends StatelessWidget {
  final Color activeColor;
  final Color inactiveColor;
  final bool isActive;

  const IndicacaoPontosImg({
    super.key,
    required this.activeColor,
    required this.inactiveColor,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      width: isActive ? 12.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? activeColor : inactiveColor,
      ),
      child: const Padding(padding: EdgeInsets.all(50),
      child: Categorias(),)
    );
  }
  
}

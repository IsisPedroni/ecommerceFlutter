import 'package:flutter/material.dart';
import 'CategoriasListView.dart';
import 'BannerCard.dart';
import 'package:ecommerce/widgets/CategoriasHotSales.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return BodyHomeView();
  }
}

class BodyHomeView extends State {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BannerCard(),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: CategoriasListView(),
        ),
         Padding(
          padding: EdgeInsets.only(top: 5),
          child: CategoriasHotSales(),
        ),
      ],
    );
  }
}

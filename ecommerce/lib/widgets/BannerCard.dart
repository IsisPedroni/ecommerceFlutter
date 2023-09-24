import 'package:flutter/material.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BannerState();
  }
}

class _BannerState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF7F6F4),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.network(
                    'assets/images/1.png',
                    fit: BoxFit.contain, // Maintain aspect ratio and fill width
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

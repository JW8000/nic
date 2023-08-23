import 'package:flutter/material.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              _buildElement(Icons.shopping_bag, "Artykuły spożywcze"),
              const Spacer(),
              const Text(
                "30.00 zł",
                style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Row(
            children: [
              _buildElement(Icons.stars_sharp, "4,8 (485)"),
              const Spacer(),
              const Text(
                "9,99 zł",
                style: TextStyle(fontSize: 24, color: Color(0xFF008080), fontWeight: FontWeight.bold),
              ),
            ],
          ),
          _buildElement(Icons.timer, "Odbiór: 10:00 - 14:00"),
        ],
      ),
    );
  }
}

Widget _buildElement(IconData iconData, String title) {
  return Row(
    children: [
      Icon(iconData, size: 24, color: const Color(0xFF008080)),
      const SizedBox(width: 4),
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 200, minHeight: 25),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    ],
  );
}

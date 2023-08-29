import 'package:flutter/material.dart';

import '../../app_text/second_page_text.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("CO MÓWIĄ INNI", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        _buildRate("4,8 / 5,0", Icons.stars_sharp),
        const SizedBox(height: 8),
        const Divider(color: Colors.grey),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "3 NAJLEPSZE RZECZY",
            style: AppText.textBoldColor,
          ),
        ),
        _buildElement("Przyjazny personel", Icons.account_circle_outlined),
        _buildElement("Pyszne jedzenie", Icons.handshake),
        _buildElement("Szybki odbiór", Icons.access_time),
      ],
    );
  }

  Widget _buildElement(String title, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 40, color: const Color(0xFF008080)),
          const SizedBox(width: 8),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 200),
            child: Text(title, style: AppText.aboutSmall),
          ),
        ],
      ),
    );
  }

  Widget _buildRate(String title, IconData iconData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 40, color: const Color(0xFF008080)),
        const SizedBox(width: 8),
        Text(title, style: AppText.about),
      ],
    );
  }
}

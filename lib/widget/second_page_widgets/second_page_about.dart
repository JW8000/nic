import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 100, minHeight: 20),
            child: const Text("CO MÓWIĄ INNI", style: TextStyle(fontWeight: FontWeight.bold))),
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 100, minHeight: 70),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.stars_sharp, size: 40, color: Color(0xFF008080)),
              Text(
                "4,8/5,0",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              )
            ],
          ),
        ),
        const Divider(color: Colors.grey),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("3 NAJLEPSZE RZECZY", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF008080))),
            _buildElement("Przyjazny personel", Icons.account_circle_outlined),
            _buildElement("Pyszne jedzenie", Icons.handshake),
            _buildElement("Szybki odbiór", Icons.access_time),
          ],
        ),
      ],
    );
  }

  Widget _buildElement(String title, IconData iconData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 40, color: const Color(0xFF008080)),
        const SizedBox(width: 8),
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 200),
          child: Text(title, style: const TextStyle(fontSize: 24)),
        ),
      ],
    );
  }
}

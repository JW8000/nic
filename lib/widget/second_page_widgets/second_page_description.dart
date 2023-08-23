import 'package:flutter/material.dart';
import '../../app_text/second_page_text.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 200, minHeight: 25),
            child: const Text("CO JEST W OFERCIE?", style: AppText.descriptionbold, textAlign: TextAlign.left),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 200, minHeight: 30),
            child: const Text(
              "To niespodzianka - Paczka będzie wypełniona pysznym jedzonkiem, które nie sprzedało się...",
              style: TextStyle(fontSize: 16),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 200),
            child: const Text("Artykuły Spożywcze      Wegetariańskie",
                style: AppText.descriptionboldcolor, textAlign: TextAlign.left),
          ),
        ],
      ),
    );
  }
}

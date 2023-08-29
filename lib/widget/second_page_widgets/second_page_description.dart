import 'package:flutter/material.dart';
import '../../app_text/second_page_text.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTop("CO JEST W OFERCIE?"),
          _buildCenter("To niespodzianka - Paczka będzie wypełniona pysznym jedzonkiem, które nie sprzedało się..."),
          _buildBottom("Artykuły Spożywcze", "Wegetariańskie"),
        ],
      ),
    );
  }
}

Widget _buildTop(String title) {
  return ConstrainedBox(
    constraints: const BoxConstraints(minWidth: 400, minHeight: 25),
    child: Text(title, style: AppText.textBold, textAlign: TextAlign.left),
  );
}

Widget _buildCenter(String title) {
  return ConstrainedBox(
    constraints: const BoxConstraints(minWidth: 400, minHeight: 50),
    child: Text(title, style: const TextStyle(fontSize: 16)),
  );
}

Widget _buildBottom(String title, String title1) {
  return Row(
    children: [
      Text(title, style: AppText.textBoldColor, textAlign: TextAlign.left),
      const SizedBox(width: 24),
      Text(title1, style: AppText.textBoldColor, textAlign: TextAlign.left),
    ],
  );
}

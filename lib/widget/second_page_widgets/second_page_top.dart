import 'package:flutter/material.dart';
import '../../app_text/second_page_text.dart';

class SecondPageTop extends StatelessWidget {
  const SecondPageTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset('assets/images/warzywa.jpg', fit: BoxFit.fitHeight),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: _buildShopTitle(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
            child: _buildIcons(),
          ),
        ),
      ],
    );
  }
}

Widget _buildShopTitle() {
  final image = Image.asset('assets/images/lidl1.png');
  return Row(
    children: [
      Container(
        constraints: const BoxConstraints(maxHeight: 48),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: image.image,
        ),
      ),
      const SizedBox(width: 8),
      const Text("Lidl", style: AppText.shopname),
    ],
  );
}

Widget _buildIcons() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Icon(Icons.share, color: Colors.white),
      SizedBox(width: 8),
      Icon(Icons.favorite_border, color: Colors.white),
    ],
  );
}

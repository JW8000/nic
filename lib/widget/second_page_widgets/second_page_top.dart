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
        _buildShopTitle(),
        _buildIcons(),
      ],
    );
  }
}

Widget _buildShopTitle() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _buildAvatar(),
          const SizedBox(width: 8),
          const Text("Lidl", style: AppText.textName),
        ],
      ),
    ),
  );
}

Widget _buildIcons() {
  return const Align(
    alignment: Alignment.topRight,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 8),
          Icon(Icons.favorite_border, color: Colors.white),
        ],
      ),
    ),
  );
}

Widget _buildAvatar() {
  final image = Image.asset('assets/images/lidl1.png');
  return Container(
    constraints: const BoxConstraints(maxHeight: 56),
    child: CircleAvatar(
      radius: 25,
      backgroundImage: image.image,
    ),
  );
}

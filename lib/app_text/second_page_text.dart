import 'package:flutter/material.dart';

class AppText {
  static const TextStyle textBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textBoldColor = textBold.copyWith(
    color: const Color(0xFF008080),
  );

  static const TextStyle textName = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle priceSmall = TextStyle(
    fontSize: 16,
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle priceBig = TextStyle(
    fontSize: 24,
    color: Color(0xFF008080),
    fontWeight: FontWeight.bold,
  );

  static TextStyle about = textBold.copyWith(
    fontSize: 32,
  );

  static TextStyle aboutSmall = textBold.copyWith(
    fontSize: 20,
  );
}

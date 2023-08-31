import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;

  const BottomButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              backgroundColor: const Color(0xFF008080)),
          child: Text(title, style: const TextStyle(fontSize: 16)),
          onPressed: () {},
        ),
      ),
    );
  }
}

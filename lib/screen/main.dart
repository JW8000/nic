import 'package:flutter/material.dart';
import 'package:nic/widget/second_page_widgets/second_page_about.dart';
import '../app_button/second_page_bottom_button.dart';
import '../widget/second_page_widgets/second_page_description.dart';
import '../widget/second_page_widgets/second_page_shop_info.dart';
import '../widget/second_page_widgets/second_page_top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kutasek 36cm+',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: SecondPageTop()),
          Expanded(child: ShopInfo(), flex: -1),
          Divider(color: Colors.grey),
          Expanded(child: Description(), flex: -1),
          Divider(color: Colors.grey),
          SizedBox(height: 20),
          Expanded(child: About(), flex: -1),
          Divider(color: Colors.grey),
          Expanded(child: BottomButton(title: 'Zarezerwuj'), flex: -1),
        ],
      ),
    );
  }
}

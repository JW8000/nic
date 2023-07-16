import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'kutasek 36 cm+'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.redAccent),
            tabs: const [
              Tab(icon: Icon(Icons.favorite),),
              Tab(text: "boobs",),
            ],
          ),
          title: const Text('I'),
        ),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
          SizedBox(
            child: Image.asset('assets/images/tlo.jpg'),
          ),
          SizedBox(
            child: Image.asset('assets/images/jakob.jpg'),
          )
        ]),
      ),
    );
  }
}

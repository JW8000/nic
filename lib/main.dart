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
      home: const SecondPage(),
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
          leading: IconButton(
            icon: const Icon(Icons.airline_seat_individual_suite_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
          backgroundColor: Colors.grey,
          bottom: TabBar(
            indicator: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.redAccent),
            tabs: const [
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                text: "boobs",
              ),
            ],
          ),
          title: const Text('I'),
        ),
        body: TabBarView(physics: const NeverScrollableScrollPhysics(), children: [
          SizedBox(
            child: Image.asset('assets/images/tlo.jpg'),
          ),
          SizedBox(
            child: Image.asset('assets/images/jakob.jpg'),
          ),
        ]),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Image.asset('assets/images/warzywa.jpg'),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  width: 128,
                  height: 32,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/lidl.jpg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Lidl",
                          style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Row(
              children: [
                Icon(Icons.shopping_bag, color: Color(0xFF008080)),
                Text("Artykuły spożywcze"),
                Spacer(),
                Text(
                  "30.00 zł",
                  style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: [
                Icon(Icons.stars_sharp, color: Color(0xFF008080)),
                Text("4,8 (485)"),
                Spacer(),
                Text(
                  "9,99 zł",
                  style: TextStyle(fontSize: 24, color: Color(0xFF008080), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: [
                Icon(Icons.timer, color: Color(0xFF008080)),
                Text("Odbiór: 10:00 - 14:00"),
              ],
            ),
          ),
          const Divider(color: Colors.grey),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "CO JEST W OFERCIE?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 35,
              child: Text(
                "To niespodzianka - Paczka będzie wypełniona pysznym jedzonkiem, które nie sprzedało się...",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Row(
              children: [
                Text(
                  "Artykuły Spożywcze      Wegetariańskie",
                  style: TextStyle(fontSize: 14, color: Color(0xFF008080), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text("CO MÓWIĄ INNI", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(
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
              Divider(color: Colors.grey),
              Text("3 NAJLEPSZE RZECZY", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF008080))),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 16.0, left: 72.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.account_circle_outlined, size: 40, color: Color(0xFF008080)),
                    Text(
                      "Przyjazny personel",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 4.0, left: 72.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.handshake, size: 40, color: Color(0xFF008080)),
                    Text(
                      "Pyszne jedzenie",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 72.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time, size: 40, color: Color(0xFF008080)),
                    Text(
                      "Szybki odbiór",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ),
              Divider(color: Colors.grey),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: const Color(0xFF008080)),
                child: const Text(
                  'Zarezerwuj',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

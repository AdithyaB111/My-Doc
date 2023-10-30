import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            flexibleSpace: Image.asset(
              "assets/appbar.png",
              fit: BoxFit.cover,
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),
                ),
                Tab(
                  icon: Icon(Icons.widgets_rounded),
                ),
                Tab(
                  icon: Icon(Icons.account_circle_rounded),
                ),
              ],
            ),
            elevation: 3.0,
          ),
          body: TabBarView(
            children: [
              tab1(),
              const Icon(Icons.home_filled),
              const Icon(Icons.widgets_rounded),
            ],
          ),
          backgroundColor: const Color.fromARGB(115, 212, 208, 208),
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    height: 200.0,
    child: const Text('Test'),
  );
}

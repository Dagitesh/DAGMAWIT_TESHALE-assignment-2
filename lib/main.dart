import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: ''),
      theme: ThemeData(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Text(
          "Perfect Flowers for your ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "special day ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              color: Colors.purple[200],
              child: Image.asset(
                'assets/abc.jpg',
                fit: BoxFit.fitWidth,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              color: Colors.purple[200],
              child: Image.asset(
                'assets/abc.jpg',
                fit: BoxFit.fitWidth,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              color: Colors.purple[200],
              child: Image.asset(
                'assets/abc.jpg',
                fit: BoxFit.fitWidth,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 200,
              color: Colors.purple[200],
              child: Image.asset(
                'assets/abc.jpg',
                fit: BoxFit.fitWidth,
              )),
        )
      ]),
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          gap: 8,
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
          gap: 8,
        ),
        GButton(
          icon: Icons.favorite_border,
          text: 'Likes',
          gap: 8,
        ),
        GButton(
          icon: Icons.account_circle,
          text: 'User',
          gap: 8,
        )
      ]),
      appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromARGB(9, 255, 255, 255)),
    );
  }
}

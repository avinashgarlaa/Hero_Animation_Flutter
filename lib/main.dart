import 'package:flutter/material.dart';
import 'package:hero_anim/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 61, 31, 150)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 115, 197),
          title: const Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailPage()));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                "assets/images/IMG-20231020-WA0098.jpg",
                height: 100,
                width: 200,
              ),
            ),
          ),
        ));
  }
}

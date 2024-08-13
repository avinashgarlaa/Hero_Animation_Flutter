import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Hero(
        tag: 'background',
        child: Image.asset('assets/images/IMG-20231020-WA0098.jpg'),
      ),
    );
  }
}

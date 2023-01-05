import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color And Font Design"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Text(
            "Hello Flutter, I Want to be a Flutter Developer.",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.blueAccent,
              fontFamily: 'IndieFlower',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("click"),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}

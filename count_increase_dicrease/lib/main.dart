import 'dart:developer';

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
      title: "AppBar",
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int couner = 0;
  void _incrementCounter() {
    setState(() {
      couner++;
    });
  }

  void _dicrementCounter() {
    setState(() {
      couner--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("MyHomePage"),
        actions: [
          IconButton(onPressed: _dicrementCounter, icon: Icon(Icons.remove)),
          IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Text(
          '$couner',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}

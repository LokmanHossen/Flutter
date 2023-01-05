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
          title: Text("Button And Icon"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              print('You clicked me');
            },
            icon: const Icon(Icons.email_outlined),
            label: const Text(
              'Mail Me',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          // Icon(
          //   Icons.airport_shuttle_outlined,
          //   color: Colors.lightBlue,
          //   size: 80.0,
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(child: Text("click")),
          backgroundColor: Colors.cyanAccent,
        ),
      ),
    );
  }
}

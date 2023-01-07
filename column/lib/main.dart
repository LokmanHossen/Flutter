import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is the Column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 20, right: 20),
              color: Colors.cyan,
              child: Text('One'),
              
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(left: 20, right: 20),
              color: Colors.pinkAccent,
              child: Text('Two'),
            ),
            Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.only(left: 20, right: 20),
              color: Colors.amber,
              child: Text('Three'),
            ),
            Container(
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.only(left: 20, right: 20),
              color: Colors.lightBlue,
              child: Text('Four'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('You Clicked Me');
          },
          child: Text('click'),
        ),
      ),
    );
  }
}

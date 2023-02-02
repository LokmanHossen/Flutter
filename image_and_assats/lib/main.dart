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
          title: Text(" Image And Assets"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Image.asset(
            'image/img-1.jpg',
          ),

          //     Image(
          //   image: AssetImage('image/img-1.jpg'),
          //   fit: BoxFit.fill,
          // ),
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

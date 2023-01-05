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
          title: Text("Know about Row"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Text('Hello flutter'),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            // style: ButtonStyle(

            // ),
          ),
          Container(
            color: Colors.cyan,
            child: const Text(
              'Inside Container',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            padding: const EdgeInsets.all(30.0),
          )

          // TextButton(
          //   style: TextButton.styleFrom(
          //     primary: Colors.blue,
          //     onSurface: Colors.red,
          //   ),
          //   onPressed: () {},
          //   child: Text('TextButton'),
          // )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(child: Text("click")),
          backgroundColor: Colors.cyanAccent,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positional Widget'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          //textDirection: TextDirection.ltr,
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              //right: 20,
              bottom: 0.0,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

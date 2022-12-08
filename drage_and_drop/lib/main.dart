import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrageScreen(),
    );
  }
}

class DrageScreen extends StatefulWidget {
  const DrageScreen({Key? key}) : super(key: key);

  @override
  State<DrageScreen> createState() => _DrageScreenState();
}

class _DrageScreenState extends State<DrageScreen> {
  bool insideTarget = false;

  String activeEmoji = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Inside Target? " + insideTarget.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DragTarget<String>(
              builder: (context, data, rejectedData) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.blue,
                  child: activeEmoji == ''
                      ? null
                      : FruitBox(activeEmoji, Colors.blue),
                );
              },
              onAccept: (emoji) {
                setState(
                  () {
                    insideTarget = true;
                    activeEmoji = emoji;
                  },
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FruitBox('🍎', Colors.red),
                FruitBox('🍌', Colors.green),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FruitBox extends StatelessWidget {
  final String boxIcon;
  final Color boxColor;

  FruitBox(this.boxIcon, this.boxColor);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: boxIcon,
      child: Container(
        height: 120.0,
        width: 120.0,
        color: boxColor,
        child: Center(child: Text(boxIcon, style: TextStyle(fontSize: 50.0))),
      ),
      feedback: Material(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.yellow,
          child: Center(child: Text(boxIcon, style: TextStyle(fontSize: 50.0))),
        ),
      ),
      childWhenDragging: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.grey,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 48.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: 'C'),
                CalculatorButton(text: 'DEL'),
                CalculatorButton(text: '/'),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '*'),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: '-'),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '+'),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '0'),
                CalculatorButton(text: '.'),
                CalculatorButton(text: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: MaterialButton(
          child: Text(
            text,
            style: TextStyle(fontSize: 24.0),
          ),
          onPressed: () {},
          color: Colors.grey[300],
          padding: EdgeInsets.all(24.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            Strings.appHeadingTitle,
            style: TextStyle(
              color: Color(0xff622F74),
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heading Title',
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTitle),
        ),
        body: ListView(
          children: [
            //Text(Strings.appHeadingTitle),
            titleSection,
          ],
        ),
      ),
    );
  }
}

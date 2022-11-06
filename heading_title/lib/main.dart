import 'package:flutter/material.dart';
import 'strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //buildButton function
    Column buildButton(IconData icon, String label) {
      Color color = new Color(0xff622F74);
      return Column(
        children: [
          Icon(icon, color: color),
          Container(
            child: Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 20,
              ),
            ),
          )
        ],
      );
    }

    //buttonDisplay
    Widget buttonDisplay = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton(Icons.phone, Strings.appButtoncall),
          buildButton(Icons.airplanemode_active, Strings.appButtonAirplane),
          buildButton(Icons.chat, Strings.appButtonChat),
          buildButton(Icons.radio, Strings.appButtonMusic),
        ],
      ),
    );

    // itleSection widget
    Widget titleSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Strings.appHeadingTitle,
              style: TextStyle(
                color: Color(0xff622F74),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                Strings.appsubHeadingTitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 31, 165, 91),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          )
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
            buttonDisplay,
            titleSection,
          ],
        ),
      ),
    );
  }
}

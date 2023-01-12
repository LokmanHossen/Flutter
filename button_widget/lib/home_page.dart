import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Design"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print('You Clicked Me');
          },

          icon: Icon(Icons.add_shopping_cart_outlined),
          label: Text("Clicked Me"),
          // child: Text(
          //   'Clicked Me',
          //   //style: TextStyle(fontSize: 30.0),
          // ),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              primary: Colors.pinkAccent,
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              elevation: 15,
              shadowColor: Colors.green,
              side: BorderSide(color: Colors.black, width: 3),
              //alignment: Alignment.bottomCenter,
              shape: StadiumBorder()),
        ),
      ),
    );
  }
}

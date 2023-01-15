import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('Stack And  Position'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450,
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                offset: Offset(0, 2),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage('images/cup.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: const [
              Text("Editor's Choice",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              Positioned(
                top: 25,
                child: Text("The Art of Making a Coffee",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text("Learn to Make the Perfect Coffee",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text("Coading With Tea",
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

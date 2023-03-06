import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double fontsize = 20;
  double padding = 5;
  double borderRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.red,
                                child: Center(
                                  child: Text(
                                    'DEL',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    'C',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '÷',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '7',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '9',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '×',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple[50],
                                child: Center(
                                  child: Text(
                                    'ANS',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Container(
                                color: Colors.deepPurple,
                                child: Center(
                                  child: Text(
                                    '=',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontsize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

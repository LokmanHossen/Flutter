import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Account Form",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formkeyValue = new GlobalKey<FormState>();
  var selectedType;

  List<String> _accountType = <String>[
    'Savings',
    'Deposit',
    'Checking',
    'Brokerage'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.bars),
        ),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Account Form',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.coins),
          ),
        ],
      ),
      body: Form(
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.userAstronaut,
                  color: Color(0xff11b719),
                ),
                hintText: "Enter your name",
                labelText: 'Name',
              ),
              keyboardType: TextInputType.name,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.envelope,
                  color: Color(0xff11b719),
                ),
                hintText: "Enter Your Email name",
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(
                  FontAwesomeIcons.phone,
                  color: Color(0xff11b719),
                ),
                hintText: "Enter your phone name",
                labelText: 'Phone',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.money,
                  size: 25.0,
                  color: Color(0xff11b719),
                ),
                SizedBox(
                  width: 50.0,
                ),
                DropdownButton(
                  items: _accountType
                      .map((value) => DropdownMenuItem(
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Color(0xff11b719),
                              ),
                            ),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (selectedAccountType) {
                    setState(() {
                      selectedType = selectedAccountType;
                    });
                  },
                
                  isExpanded: false,
                  hint: Text(
                    'Choose Account Type',
                    style: TextStyle(color: Color(0xff11b719)),
                  ),
                ),
                SizedBox(height: 40.0,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

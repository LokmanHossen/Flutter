import 'package:flutter/material.dart';

String getFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

void main() {
  runApp(const MyApp());
}

void test(List<String>? names) {
  // int length = 0;
  // if (names != null) {
    final length = names?.length ?? 0;
  //} 
  //else {
  //   length = 0;
  // }

// null-aware assignment operator

// void test(String? firstName, String? middleName, String? lastName) {
//   String? name = lastName;
//   name ??= middleName;
//   name ??= lastName;
//   print(name);
  // Type nullable

  // const String? firstName = null;
  // const String? middleName = null;
  // const String? lastName = 'Hossen';

  // if (firstName != null) {
  //   print("First name is the first non-null value");
  // } else if (middleName != null) {
  //   print("middle name is the first non-null value");
  // } else if (lastName != null) {
  //   print("last name is the first non-null value");
  // }

  // List<String?>? names = ['Foo', 'Bar', null];
  // names = null;

  // int? age = 20;
  // // age = null;
  // if (age == null){

  // }

  // String? name = null;
  // print(name);

  // name = 'Lookman';
  // print(name);

//Maps in Dart

  // var person = {
  //   'age': 20,

  //   'name': 'Lokman',
  // };

  // print(person);
  // person['LastName'] = 'Hossem';
  // print(person);

//set  of dart

  // var names = {'Jesmin', 'Lokman', 'Jui'};
  // names.add('Moina');
  // names.add('Sinha');
  // names.add('Sinthiya');
  // print(names);

  //List
  // final names = ['foo', 'Bar', 'BAz'];
  // // final foo = names[1];
  // // print(foo);
  // print(names.length);
  // names.add('My name');
  // print(names.length);

//Operqator
  // final name = 'Foo Bar Baz';
  // final nameTimes100 = name * 100;
  // print(nameTimes100);

  // var age = 20;
  // final ageMinusOne = --age;
  // print(age);
  // print(ageMinusOne);

  //if else
//  const name = 'lokman';
//   if (name == 'lokmann') {
//     print('Yes It is lokman');
//   } else if (name != 'bar') {
//     print('This value is not Bar');
//   } else {
//     print("I don't know what this is");
//   }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();

    //test('foo', null, 'baz');
    //print(getFullName('Lokman', 'Jesmin'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

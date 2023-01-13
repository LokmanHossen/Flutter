//import 'dart:ffi';
import 'package:flutter/material.dart';

// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName';
// }

void main() {
  runApp(const MyApp());
}

//-----------------Future-------------//
//use  async & await keyword
Future<int> heavvyFutureThatMultipliesByTwo(int a) {
  return Future.delayed(const Duration(seconds: 3), () {
    return a * 2;
  });
}

void future() async {
  final result = await heavvyFutureThatMultipliesByTwo(10);
  print(result);
}

//-----------------Extension--------------//

class Ccat {
  final String name;
  Ccat(this.name);
}

class Pperson {
  final String firstName;
  final String lastName;

  Pperson(this.firstName, this.lastName);
}

extension FullName on Pperson {
  String get fullName => '$firstName $lastName';
}

extension Run on Ccat {
  void run() {
    print('Cat $name is running');
  }
}

void extension() {
  final foo = Pperson('foo', 'Bar');
  print(foo.fullName);
  // final meow = Ccat('Fluffers');
  // meow.run();
  //print(meow.name);
}

//------------Custom Operator-------------//

class Pet {
  final String name;
  Pet(this.name);
  @override
  bool operator ==(covariant Pet other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
}

void custom_operator() {
  final pet1 = Pet('Cat');
  final pet2 = Pet('Cat');

  if (pet1 == pet2) {
    print('The are equal');
  } else {
    print('They are not equal');
  }
}

//-------------Factory Constructor---------//
class Rat {
  final String name;
  Rat(this.name);

  factory Rat.fluffBall() {
    return Rat('Fluff Ball');
  }
}

void factory_c() {
  final fluffBall = Rat.fluffBall();
  print(fluffBall.name);

  // final fluffBall = Rat('Fluff Ball');
  // print(fluffBall.name);
}

//-------------Inheritance and subclassing--------//

abstract class LivingThing {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('I am Moving');
  }
}

class Cat extends LivingThing {}

void inheritance() {
  //final fluffers = Cat(); //abstract class

  final fluffers = Cat();
  fluffers.move();
  fluffers.breathe();
}
//---------------------Constructor---------------//

class Prson {
  final String name;
  Prson(this.name);

  void printName() {
    // Method
    print('I will now print the name of person');
    print(name);
  }
}

void constructor() {
  final foo = Prson('Foo Bar');
  // print(foo.name);
  foo.printName();
}

//------------------Classes---------------//
class Person {
  void run() {
    print('RUNNING');
  }

  void breathe() {
    print('Breathing');
  }
}

void test() {
  final person = Person();
  person.run();
  person.breathe();
}

//---------------Swith Statement---------------//
// enum AnimalType { cat, dog, bunny }

// void (AnimalType animalType) {
//   switch (animalType) {
//     case AnimalType.bunny:
//       print("Bunny");
//       return;
//     case AnimalType.cat:
//       print("Cat");
//       return;
//     case AnimalType.dog:
//       print("Dog");
//   }
//   print("FUNCTION IS FINISHED");

// if (animalType == AnimalType.cat) {
//   print("Oh I love Cat");
// } else if (animalType == AnimalType.dog) {
//   print("Dogs are so fluffy");
// } else if (animalType == AnimalType.bunny) {
//   print("I wish I had a bunny");
// }
//}

//-------------------------Enumerations------------------------//
// enum PersonProperties { firstName, lastName, age }

// void test() {
//   print(PersonProperties.lastName);
// }

// void test(List<String>? names) {
//   // int length = 0;
//   // if (names != null) {
//     final length = names?.length ?? 0;
//}
//else {
//   length = 0;
// }

//------------- null-aware assignment operator-------------------//

// void test(String? firstName, String? middleName, String? lastName) {
//   String? name = lastName;
//   name ??= middleName;
//   name ??= lastName;
//   print(name);

//------------- Type nullable-------------------------//

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

//--------------------------Maps in Dart-------------------//

// var person = {
//   'age': 20,

//   'name': 'Lokman',
// };

// print(person);
// person['LastName'] = 'Hossem';
// print(person);

//-------------------set  of dart----------------------//

// var names = {'Jesmin', 'Lokman', 'Jui'};
// names.add('Moina');
// names.add('Sinha');
// names.add('Sinthiya');
// print(names);

//-------------------List---------------------------//
// final names = ['foo', 'Bar', 'BAz'];
// // final foo = names[1];
// // print(foo);
// print(names.length);
// names.add('My name');
// print(names.length);

//--------------------------Operqator----------------------//
// final name = 'Foo Bar Baz';
// final nameTimes100 = name * 100;
// print(nameTimes100);

// var age = 20;
// final ageMinusOne = --age;
// print(age);
// print(ageMinusOne);

//----------------------------if else-----------------------//
//  const name = 'lokman';
//   if (name == 'lokmann') {
//     print('Yes It is lokman');
//   } else if (name != 'bar') {
//     print('This value is not Bar');
//   } else {
//     print("I don't know what this is");
//   }
//}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // test();
    //constructor();
    inheritance();
    factory_c();
    custom_operator();
    extension();
    future();

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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

String getFullName(String firstName, String lastName) => '$firstName $lastName';

String printName() {
  return '';
}

// enum PersonName { firstName, lastName, age }
// enum AnimalType { cat, dog, rat }

// class
// class Person {
//   void run() {
//     print("Running");
//   }

//   void breathe() {
//     print("Breathing");
//   }
// }

//class constructor
// class Person {
//   final String name;
//   Person(this.name);
//   void printName() {
//     print(name);
//   }
// }

// class inheritance
// class LivingThing {
//   void breath() {
//     print("breath");
//   }

//   void move() {
//     print("move");
//   }
// }
// class Cat extends LivingThing {}

//factory class
// class Cat extends Object {
// class Cat {
//   final String name;
//   Cat(this.name);
// factory Cat.foobar() {
//   return Cat('flubb Ball');
// }

// custom operator
// @override
// bool operator ==(covariant Cat other) => other.name == name;

// @override
// int get hashCode => name.hashCode;
//}

//advance dart
//extension
// extension Run on Cat {
//   void run() {
//     print("$name  running");
//   }
// }

// class Person {
//   final String firstName;
//   final String lastName;
//   Person(this.firstName, this.lastName);
// }

// extension FullName on Person {
//   String get fullName => '$firstName $lastName';
// }

// future
// Future<int> A(int a) {
//   return Future.delayed(const Duration(seconds: 3), () {
//     return a * 2;
//   });
//}

// Stream
// Stream<String> getName() {
//   // return Stream.value("foo");
//   return Stream.periodic(const Duration(seconds: 1), (value) {
//     return "foo";
//   });
// }

// generator
Iterable<int> getOneTwoThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void test() async {
  // final result = await A(10);
  // print(result);

  //stream
  // await for (final value in getName()) {
  //   print(value);
  // }
  // print("stream is finised");

  //generator
  for (final value in getOneTwoThree()) {
    print(value);
  }
}

//void test() {
//   var age = 20;
//   final halfOfAge = age/2;
//   final doubleTheAge = age*2;
//   final ageMinusOne = --age;
//   print(halfOfAge);

//list
// final name=['foo','bar','baz'];
// final length = name.length;
// name.add('Add');
// print(name.length);

//sets
// final names = {'foo','bar','baz'};
// names.add('foo');
// names.add('bar');
// names.add('baz');

// const thing = {'foo',1};
// print(names);

// MAP
// var person = {
//   'age' : 20,
//   'name' : 'foo'
// };

// print(person);

// person['name']  = 'FOOOOO';
// print(person);

// sound null safety
// String? name = null;
// print(name);
// name = 'Ayush';
// print(name);

//list should be null not its value
// List<String>? name = ['foo', 'bar'];
// name = null;
// print(name);

//list should be null and also its value
// List<String?>? name = ['foo', 'bar', null];

//use of ?? operator carry picking non null value
// const String? firstName = null;
// const String? middleName = null;
// const String? lastName = 'Soni';

// final firstNonNullValue = firstName ?? middleName ?? lastName;
// print(firstNonNullValue);

// null aware assignment operator // use of =? in this case
// String? name = firstName;
// name ??= middleName;
// name ??= lastName;
// print(name);

// null condition invocation
// final length = middleName?.length ?? 0;
// print(length);

//Enum
// print(PersonName.firstName);

// Switch Statement
// switch (animalType) {
//   case AnimalType.cat:
//     print("cat");
//     break;
//   case AnimalType.dog:
//     print("dog");
//     break;
//   case AnimalType.rat:
//     print("rat");
//     break;
// }

// creating class object
// final person = Person(); //person is instent member of Person
// person.run();
// person.breathe();

// final foo = Person("foo bar");
// foo.printName();

// inheritance object
// final fluffers = Cat();
// fluffers.move();
// fluffers.breath();

// factory object
// final fluffball = Cat.foobar();
// print(fluffball.name);

// custom object
// final cat1 = Cat('foo');
// final cat2 = Cat('foo');
// if (cat1 == cat2) {
//   print("cats are equal");
// } else {
//   print("cats are not equal");
// }

//Advance dart
//Extension
// final cat = Cat('flopper');
// print(cat.name);
// cat.run();

// final person = Person("firstName", "lastName");
// print(person.fullName);
//}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();
    // print(getFullName('Ayush', 'Soni'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

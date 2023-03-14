import 'package:duckcination/models/child.dart';
import 'package:duckcination/ui/screens/child_screen.dart';
import 'package:duckcination/ui/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

Color? primaryColor = Colors.amber[300];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duckcination',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return ChildScreen(child: Child('Jennyfer', DateTime(2018,9,26)));
    List<Child> children = [
      Child('Reki', DateTime(1998,9,26)),
      Child('Aliz', DateTime(2000,1,2)),
      Child('Boti', DateTime(1996,11,7)),
      Child('Lehel', DateTime(1999,9,17)),
    ];
    return DuckHome(children: children,);
  }
}

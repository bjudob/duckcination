import 'package:duckcination/models/child.dart';
import 'package:duckcination/ui/screens/calendar_screen.dart';
import 'package:duckcination/ui/screens/settings_screen.dart';
import 'package:duckcination/ui/screens/vaccine_screen.dart';
import 'package:duckcination/ui/screens/duck_home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

Color? primaryColor = Colors.red[200];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duckcination',
      theme: ThemeData(
        primaryColor: Colors.orange[50],
        fontFamily: 'Georgia',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
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
  List<Widget> tabs = [
    DuckHome(),
    CalendarScreen(),
    SettingsScreen(),
  ];
  int selectedIndex=0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ChildScreen(child: Child('Jennyfer', DateTime(2018,9,26)));
    return Scaffold(
      backgroundColor: ,
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.vaccines, color: Colors.black45,), label: "Kids",),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded, color: Colors.black45,), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black45,), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.black,
        backgroundColor: Colors.orange[50],
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}

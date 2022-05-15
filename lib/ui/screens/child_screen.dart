import 'package:duckcination/models/child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/vaccine.dart';
import '../elements/vaccine_card.dart';

class ChildScreen extends StatefulWidget {
  const ChildScreen({Key? key, required this.child}) : super(key: key);
  final Child child;

  @override
  State<ChildScreen> createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Duckcination'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VaccineCard(Vaccine('Hepatitis B - 1', 0,1,'img/hepatitis_b.png',VaccineStatus.todo)),
              VaccineCard(Vaccine('Hepatitis B - 2', 2,3,'img/hepatitis_b.png',VaccineStatus.todo),),
              VaccineCard(Vaccine('Rotavirus', 7,8,'img/rotavirus.png',VaccineStatus.todo),),
              VaccineCard(Vaccine('Influenza', 11,12,'img/influenza.png',VaccineStatus.later),),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/*
ListView.builder(
// Let the ListView know how many items it needs to build.
itemCount: widget.child.vaccines.length,
// Provide a builder function. This is where the magic happens.
// Convert each item into a widget based on the type of item it is.
itemBuilder: (context, index) {
final item = widget.child.vaccines[index];
return VaccineCard(item);
},
)*/

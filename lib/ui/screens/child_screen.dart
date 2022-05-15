import 'package:duckcination/models/child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Duckcination'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 2000,
              child: ListView.builder(
                  itemCount: widget.child.vaccines.length,
                  itemBuilder: (context, index) {
                    final item = widget.child.vaccines[index];
                    return VaccineCard(item);
                  }),
            )
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

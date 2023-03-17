import 'package:duckcination/models/child.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../elements/vaccine_card.dart';

class VaccineScreen extends StatefulWidget {
  const VaccineScreen({Key? key}) : super(key: key);

  @override
  State<VaccineScreen> createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {

  @override
  Widget build(BuildContext context) {
    Child child=DuckProvider().getChild();
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
                  itemCount: child.vaccines.length,
                  itemBuilder: (context, index) {
                    final item = child.vaccines[index];
                    return VaccineCard(item);
                  }),
            )
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

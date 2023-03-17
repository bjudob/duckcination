import 'package:duckcination/models/child.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/vaccine.dart';
import '../elements/vaccine_card.dart';

class VaccineScreen extends StatefulWidget {
  const VaccineScreen({required this.vaccine, Key? key}) : super(key: key);
  final Vaccine vaccine;

  @override
  State<VaccineScreen> createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {

  @override
  Widget build(BuildContext context) {
    Child child=DuckProvider().getChild();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duckcination'),
      ),
      backgroundColor: Colors.orange.shade200,
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text( widget.vaccine.name),
            Hero(
              tag: widget.vaccine.name!,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Image.asset(
                    widget.vaccine.image!,
                    fit: BoxFit.contain,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ],
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

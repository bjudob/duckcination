import 'package:duckcination/models/child.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/vaccine.dart';
import '../elements/show_text.dart';
import '../elements/vaccine_card.dart';

class VaccineScreen extends StatefulWidget {
  const VaccineScreen({required this.vaccine, Key? key}) : super(key: key);
  final Vaccine vaccine;

  @override
  State<VaccineScreen> createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {

  Widget getDescriptionWidgets(){
    List<Description> descriptions=widget.vaccine.descriptions;
    List<Widget> list = [];
    for(var i = 0; i < descriptions.length; i++){
      list.add(Row(
          children: [ShowText(description: descriptions[i])]
      ));
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duckcination'),
      ),
      backgroundColor: Colors.orange.shade200,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
        child: SingleChildScrollView(
            child: Expanded(
              child: Column(
          children: [
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
              getDescriptionWidgets(),
          ],
        ),
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

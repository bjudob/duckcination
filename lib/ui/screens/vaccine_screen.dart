import 'package:countup/countup.dart';
import 'package:duckcination/models/child.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:duckcination/ui/elements/video_player.dart';
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
  Widget getDescriptionWidgets() {
    List<Description> descriptions = widget.vaccine.descriptions;
    List<Widget> list = [];
    for (var i = 0; i < descriptions.length; i++) {
      list.add(Row(children: [ShowText(description: descriptions[i])]));
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //colors: [Color.fromRGBO(255, 254, 254, 100),Color.fromRGBO(255, 240, 220, 100)]),
                colors: [Color.fromRGBO(253, 200, 150, 100),Color.fromRGBO(255, 240, 220, 100)]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child:Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50, 20, 10),
        child: SingleChildScrollView(
            child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,10),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Hero(
                    tag: widget.vaccine.name!,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Image.asset(
                          widget.vaccine.image!,
                          fit: BoxFit.contain,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    widget.vaccine.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              const VideoDuck(),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.trending_up),
                      Text(
                        "Lives saved/year",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Countup(
                    begin: 0,
                    end: 1260000,
                    duration: Duration(seconds: 3),
                    separator: ',',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
              getDescriptionWidgets(),
            ],
          ),
        )),
      ),
    ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

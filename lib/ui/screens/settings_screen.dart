import 'package:duckcination/models/vaccine.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:duckcination/ui/elements/big_button.dart';
import 'package:duckcination/ui/screens/history_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../models/child.dart';
import '../elements/child_card.dart';
import '../elements/vaccine_card.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final DuckProvider duckProvider = DuckProvider();
  List<Child> children = [];
  Child child = Child("Reki", DateTime(1998, 9, 26), Gender.girl, 6);

  void selectChild(String name) {
    for (final c in children) {
      if (c.name == name) {
        setState(() {
          child = c;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    children = duckProvider.getChildren();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(100, 254, 254, 100),
              Color.fromRGBO(255, 247, 234, 100)
            ]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 65, 10, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          child.image,
                          height: 100,
                          width: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownButton(
                                  value: child.name,
                                  items: children.map<DropdownMenuItem<String>>(
                                      (Child child) {
                                    return DropdownMenuItem<String>(
                                      value: child.name,
                                      child: Text(
                                        child.name,
                                        style: const TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? name) {
                                    selectChild(name!);
                                  }),
                              OutlinedButton(
                                  onPressed: () {},
                                  child:
                                      const Text('Check upcoming appointment'))
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        BigButton(
                            iconData: Icons.child_care_sharp,
                            title: "My-Certificate",
                            target_screen: HistoryScreen(),
                            option: ''),
                        BigButton(
                          iconData: Icons.calendar_today_outlined,
                          title: "My-Institution",
                          target_screen: HistoryScreen(),
                          option: '',
                        ),
                      ],
                    ),
                    //or here'
                  ],
                ),
              ),
              //settings here
            ],
          ),
        ),
      ),
    );
  }
}

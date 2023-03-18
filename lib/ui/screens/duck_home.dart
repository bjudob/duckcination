import 'package:duckcination/models/vaccine.dart';
import 'package:duckcination/provider/duck_provider.dart';
import 'package:duckcination/ui/elements/big_button.dart';
import 'package:duckcination/ui/screens/history_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/child.dart';
import '../elements/child_card.dart';
import '../elements/vaccine_card.dart';

class DuckHome extends StatefulWidget {
  const DuckHome({Key? key}) : super(key: key);

  @override
  State<DuckHome> createState() => _DuckHomeState();
}

class _DuckHomeState extends State<DuckHome> {
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
                //colors: [Color.fromRGBO(255, 254, 254, 100),Color.fromRGBO(255, 240, 220, 100)]),
                colors: [Color.fromRGBO(253, 200, 150, 100),Color.fromRGBO(255, 240, 220, 100)]),
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
                            title: "Days until-Next Vaccine",
                            target_screen: HistoryScreen(),
                            option: 'days'),
                        BigButton(
                          iconData: Icons.calendar_today_outlined,
                          title: "Vaccination-History",
                          target_screen: HistoryScreen(),
                          option: 'history',
                        ),
                        BigButton(
                          iconData: Icons.perm_phone_msg_outlined,
                          title: "    Call the    -Doctor",
                          target_screen: HistoryScreen(),
                          option: 'call',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 100),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 460,
                      child: Container(
                        //color: Colors.grey[100],
                        child: GridView.count(
                            childAspectRatio: 0.8,
                            crossAxisCount: 4,
                            controller: ScrollController(keepScrollOffset: false),
                            shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: child.vaccines.map((Vaccine vaccine) {
                            return Container(
                              height: 250.0,
                              child: Center(
                                child: VaccineCard(vaccine)
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

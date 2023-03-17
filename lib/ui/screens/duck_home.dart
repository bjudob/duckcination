import 'package:duckcination/provider/duck_provider.dart';
import 'package:duckcination/ui/elements/big_button.dart';
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
  Child child=Child("Reki",DateTime(1998,9,26), Gender.girl, 6);

  void selectChild(String name){
    for(final c in children){
      if(c.name == name) {
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
      backgroundColor: Colors.orange.shade200,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'img/boy.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    children: [
                      DropdownButton(
                        value: child.name,
                        items: children.map<DropdownMenuItem<String>>((Child child) {
                            return DropdownMenuItem<String>(
                              value: child.name,
                              child: Text(
                                  child.name,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight : FontWeight.bold,
                                  ),
                              ),
                            );}).toList(),
                          onChanged: (String? name) {
                              selectChild(name!);
                            }
                      ),
                      OutlinedButton(
                          onPressed: () { },
                          child: const Text('Check upcoming appointment')
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BigButton(iconData: Icons.child_care_sharp, title: "Vaccination\nProgram",),
                  BigButton(iconData: Icons.calendar_today_outlined,title: "Vaccination\nProgram",),
                  BigButton(iconData: Icons.perm_phone_msg_outlined,title: "Vaccination\nProgram",),
                ],
              ),
              SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 400,
                        child: Container(
                          //color: Colors.grey[100],
                          child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3
                              ),
                              itemCount: child.vaccines.length,
                              itemBuilder: (context, index) {
                                final item = child.vaccines[index];
                                return VaccineCard(item);
                              }),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}

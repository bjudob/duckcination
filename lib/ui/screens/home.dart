import 'package:duckcination/provider/duck_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/child.dart';
import '../elements/child_card.dart';

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
      backgroundColor: Colors.amberAccent.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
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
                                  style: TextStyle(
                                     fontSize: 30,
                                  ),
                              ),
                            );}).toList(),
                          onChanged: (String? name) {
                              selectChild(name!);
                            }
                      ),
                      OutlinedButton(
                          onPressed: () { },
                          child: Text('Check upcoming appointment')
                      )
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(
                    height: 2000,
                    child: ListView.builder(
                        itemCount: children.length,
                        itemBuilder: (context, index) {
                          final child = children[index];
                          return ChildCard(child: child);
                        }),
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

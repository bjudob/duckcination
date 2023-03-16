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

  @override
  Widget build(BuildContext context) {
    children = duckProvider.getChildren();
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
                  itemCount: children.length,
                  itemBuilder: (context, index) {
                    final child = children[index];
                    return ChildCard(child: child);
                  }),
            )
          ],
        )),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/child.dart';
import '../elements/child_card.dart';

class DuckHome extends StatefulWidget {
  const DuckHome({Key? key, required this.children}) : super(key: key);
  final List<Child> children;

  @override
  State<DuckHome> createState() => _DuckHomeState();
}

class _DuckHomeState extends State<DuckHome> {
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
                      itemCount: widget.children.length,
                      itemBuilder: (context, index) {
                        final child = widget.children[index];
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

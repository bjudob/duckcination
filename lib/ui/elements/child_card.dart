import 'package:duckcination/ui/screens/child_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/child.dart';

var genderColors = {
  Gender.girl: [Colors.pinkAccent, Colors.pinkAccent.shade200],
  Gender.boy: [Colors.lightBlue.shade300, Colors.lightBlue.shade200],
  Gender.duck: [Colors.grey.shade300, Colors.grey.shade200],
};

var genderImages = {
  Gender.girl: 'img/girl.png',
  Gender.boy: 'img/boy.png',
};

class ChildCard extends StatefulWidget {
  const ChildCard({required this.child, Key? key}) : super(key: key);
  final Child child;

  @override
  State<ChildCard> createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChildScreen(child: widget.child)),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: genderColors[widget.child.gender]!),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              Image(
                image: AssetImage(genderImages[widget.child.gender]!),
                width: 100,
                height: 100,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      widget.child.name,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.child.age.toString() + ' years old',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

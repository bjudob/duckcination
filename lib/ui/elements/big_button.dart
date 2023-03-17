import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigButton extends StatefulWidget {
  const BigButton({Key? key, required this.iconData, required this.title}) : super(key: key);
  final IconData iconData;
  final String title;

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey[100]!,Colors.grey[400]!]),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: Column(
            children: [
              Icon(widget.iconData, size: 50,),
              Text(widget.title),
            ],
          ),
        ),
      ),
    );
  }
}

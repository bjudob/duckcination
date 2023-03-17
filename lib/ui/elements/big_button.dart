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
        /*decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey[100]!,Colors.grey[400]!]),
            borderRadius: const BorderRadius.all(Radius.circular(20))),*/
        decoration: const BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,15,15,15),
          child: Column(
            children: [
              Icon(widget.iconData, size: 50, color: Colors.orange,),
              Text(widget.title.split('-')[0], style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.title.split('-')[1], style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}

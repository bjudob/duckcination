import 'package:duckcination/models/vaccine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowText extends StatefulWidget {
  const ShowText({Key? key, required this.description}) : super(key: key);
  final Description description;
  @override
  State<ShowText> createState() => _ShowTextState();
}

class _ShowTextState extends State<ShowText> {
  bool visible=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(children: [
              Text(
                widget.description.title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down_outlined, size: 60),
              Divider(
                color: Colors.red,
              ),
            ]),
            Visibility(
              visible: visible,
                child: Text(widget.description.content)
            )
          ],
        ));
  }
}

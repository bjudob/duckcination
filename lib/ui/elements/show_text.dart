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
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              visible = !visible;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              widget.description.title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.arrow_drop_down_outlined, size: 60),
          ]),
        ),
        const Divider(
          color: Colors.red,
        ),
        Visibility(visible: visible, child: Text(widget.description.content))
      ],
    ));
  }
}

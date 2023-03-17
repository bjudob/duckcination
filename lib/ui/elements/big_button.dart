import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigButton extends StatefulWidget {
  const BigButton({Key? key}) : super(key: key);

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey[100]!,Colors.grey[400]!]),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }
}

import 'package:duckcination/models/vaccine.dart';
import 'package:flutter/material.dart';

class VaccineCard extends StatefulWidget {
  const VaccineCard(this.vaccine, {Key? key}) : super(key: key);
  final Vaccine vaccine;

  @override
  State<VaccineCard> createState() => _VaccineCardState();
}

class _VaccineCardState extends State<VaccineCard> {
  void changeName(){
    setState(() {
      widget.vaccine.name='clicked';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      shadowColor: Colors.amberAccent,
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen.shade300])),
          child: Row(
            children: [
              Image(
                image: AssetImage(widget.vaccine.image),
                width: 70,
                height: 70,
              ),
              Text(widget.vaccine.name),
              TextButton(onPressed: (){changeName();}, child: Text('11')),
            ],
          ),
        ),
      ),
    );
  }
}

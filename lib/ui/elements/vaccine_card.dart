import 'package:duckcination/models/vaccine.dart';
import 'package:flutter/material.dart';

var statusColors = {
  VaccineStatus.done: [Colors.lightGreen, Colors.lightGreen.shade300],
  VaccineStatus.todo: [Colors.red.shade50, Colors.red.shade300],
};

class VaccineCard extends StatefulWidget {
  const VaccineCard(this.vaccine, {Key? key}) : super(key: key);
  final Vaccine vaccine;

  @override
  State<VaccineCard> createState() => _VaccineCardState();
}

class _VaccineCardState extends State<VaccineCard> {
  void changeName() {
    setState(() {
      widget.vaccine.vaccineStatus = VaccineStatus.done;
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
                  colors: statusColors[widget.vaccine.vaccineStatus]!)),
          child: Row(
            children: [
              Image(
                image: AssetImage(widget.vaccine.image),
                width: 70,
                height: 70,
              ),
              Column(
                children: [
                  Text(
                    widget.vaccine.name,
                    style: const TextStyle(fontSize: 22),
                  ),
                  Text(
                    widget.vaccine.ageRecommendation,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Checkbox(
                  value: widget.vaccine.vaccineStatus == VaccineStatus.done,
                  onChanged: (checked) {
                    changeName();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

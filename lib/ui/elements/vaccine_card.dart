import 'package:duckcination/models/vaccine.dart';
import 'package:flutter/material.dart';

var statusColors = {
  VaccineStatus.done: [Colors.lightGreen, Colors.yellowAccent.shade200],
  VaccineStatus.todo: [Colors.red.shade300, Colors.red.shade200],
  VaccineStatus.later: [Colors.grey.shade300, Colors.grey.shade200],
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
    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: statusColors[widget.vaccine.vaccineStatus]!),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.vaccine.image),
              width: 100,
              height: 100,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.vaccine.name,
                    style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.vaccine.ageRecommendation,
                    style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Checkbox(
                value: widget.vaccine.vaccineStatus == VaccineStatus.done,
                onChanged: (checked) {
                  changeName();
                })
          ],
        ),
      ),
    );
  }
}

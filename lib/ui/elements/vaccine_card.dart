import 'package:duckcination/models/vaccine.dart';
import 'package:flutter/material.dart';

import '../screens/vaccine_screen.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  VaccineScreen(vaccine: widget.vaccine!)),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: statusColors[widget.vaccine.vaccineStatus]!),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Hero(
                    tag: widget.vaccine.name,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  VaccineScreen(vaccine: widget.vaccine!),
                            ),
                          );
                        },
                        child: Image.asset(
                          widget.vaccine.image,
                          fit: BoxFit.contain,
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
          ],
        ),
      ),
    );
  }
}

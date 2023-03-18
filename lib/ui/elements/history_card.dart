import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key, required this.date, required this.vaccine, required this.notes}) : super(key: key);
  final String date;
  final String vaccine;
  final String notes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(date, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Row(
                children: [
                  const Text("Vaccine:  ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(vaccine, style: TextStyle(fontSize: 20,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Notes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(notes, style: TextStyle(fontSize: 20,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

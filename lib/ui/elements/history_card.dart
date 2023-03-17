import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

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
                children: const [
                  Icon(Icons.calendar_today_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("2022. 11. 07", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Row(
                children: const [
                  Text("Vaccine:  ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Hepatitis B - 1", style: TextStyle(fontSize: 20,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Notes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!", style: TextStyle(fontSize: 20,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:duckcination/ui/elements/history_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade200,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8,70,8,0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text("History", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),
                    HistoryCard(date: "2022. 11. 07", vaccine: "Hepatitis B - 1", notes: "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

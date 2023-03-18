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
          padding: const EdgeInsets.fromLTRB(8, 70, 8, 0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    HistoryCard(
                      date: "2022. 11. 07",
                      vaccine: "Hepatitis B - 1",
                      notes:
                          "My dear kid had severe side effects.\nSo so sad, he nearly died.\nAnti vaxers forever!!",
                    ),
                    HistoryCard(
                      date: "2022. 09. 17",
                      vaccine: "BCG",
                      notes:
                          " Little Johnny got scared of the needle, but thankfully nothing bad happened",
                    ),
                    HistoryCard(
                      date: "2022.08.24",
                      vaccine: "Hexavalent",
                      notes:
                          "Smoothest vaccination so far, little Johnny almost wanted another one",
                    ),
                    HistoryCard(
                        date: "2022. 02. 03",
                        vaccine: "ROR",
                        notes:
                            "It was crazy, the vaccine made my little Johnny a mutant ninja turtle"),
                    HistoryCard(
                      date: "2021.09.11",
                      vaccine: "Pneumococcal",
                      notes:
                          "It was little Johan’s first vaccination that he remembers. It went well and there were no side effects thankfully",
                    ),
                    HistoryCard(
                      date: "2021. 07. 07",
                      vaccine: "DTPa - VPI",
                      notes:
                          "Little Johan passed out after the vaccine, it was almost like if he saw a monster OMG",
                    ),
                    HistoryCard(
                      date: "2021.06.13",
                      vaccine: "dTpa",
                      notes:
                          "There were no complications at all, little Johan will become a very handsome and kind young man",
                    ),
                    HistoryCard(
                      date: "2021. 03. 22",
                      vaccine: "Rotavirus",
                      notes:
                          "My little Johan started to act weird…hopefully nothing bad happens",
                    ),
                    HistoryCard(
                      date: "2021.01. 19",
                      vaccine: "Chickenpox",
                      notes:
                          "How many vaccines are there??? Maybe I’ll become an anti vaxer",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

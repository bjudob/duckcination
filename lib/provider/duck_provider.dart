import '../models/child.dart';

class DuckProvider{
  static List<Child> children = [
    Child('Reki', DateTime(1998,9,26), Gender.girl, 6),
    Child('Aliz', DateTime(2000,1,2), Gender.girl, 4),
    Child('Boti', DateTime(1996,11,7), Gender.boy, 7),
    Child('Lehel', DateTime(1999,9,17), Gender.boy, 3),
  ];

  Child child=children[0];

  List<Child> getChildren(){
    return children;
  }

  Child getChild(){
    return child;
  }
}
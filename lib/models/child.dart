import 'package:duckcination/models/long_descriptions.dart';
import 'package:duckcination/models/vaccine.dart';

import '../ui/elements/vaccine_card.dart';

enum Gender {
  boy,
  girl,
  duck,
}


class Child{
  String name;
  DateTime birthDate;
  late List<Vaccine> vaccines;
  late List<Vaccine> r_vaccines;
  Gender gender;
  int age;
  String image='img/boy.png';


  Child(this.name,this.birthDate, this.gender, this.age){
    if (gender == Gender.girl){
      image='img/girl.png';
    }
    List<Description> descriptions=[
      Description("Key vaccine facts", hepatitis_key_facts),
      Description("Who should have the vaccine", hepatitis_key_facts),
      Description("Safety and side effects", hepatitis_key_facts),
      Description("Ingredients", hepatitis_key_facts),
    ];
    vaccines=[
      Vaccine('HepB', 0,1,'img/liver.png',VaccineStatus.done, descriptions),
      Vaccine('BCG', 2,3,'img/lung.png',VaccineStatus.done, descriptions),
      Vaccine('Hexavalent', 7,8,'img/penta.png',VaccineStatus.done, descriptions),
      Vaccine('ROR', 11,12,'img/hand.png',VaccineStatus.todo, descriptions),
      Vaccine('Pneumococcal', 11,12,'img/ful.png',VaccineStatus.todo, descriptions),
      Vaccine('DTPa-VPI', 2,3,'img/baci3.png',VaccineStatus.todo, descriptions),
      Vaccine('dTpa', 7,8,'img/baci1.png',VaccineStatus.todo, descriptions),
    ];
    r_vaccines=[
      Vaccine('Rotavirus', 0,1,'img/bel.png',VaccineStatus.todo, descriptions),
      Vaccine('Chickenpox', 2,3,'img/himlo.png',VaccineStatus.todo, descriptions),
      Vaccine('Meningo', 7,8,'img/agy.png',VaccineStatus.todo, descriptions),
      Vaccine('HepA', 11,12,'img/maj.png',VaccineStatus.todo, descriptions),
      Vaccine('Influenza', 11,12,'img/orr.png',VaccineStatus.todo, descriptions),
      Vaccine('HPV', 2,3,'img/pina.png',VaccineStatus.todo, descriptions),
    ];
  }
}
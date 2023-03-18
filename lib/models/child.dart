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
  Gender gender;
  int age;
  String image='img/boy.png';


  Child(this.name,this.birthDate, this.gender, this.age){
    if (gender == Gender.girl){
      image='img/girl.png';
    }
    vaccines=[
      Vaccine('HepB', 0,1,'img/liver.png',VaccineStatus.done, [
        Description("Key vaccine facts", hepatitis_key_facts),
        Description("Who should have the vaccine", hepatitis_key_facts),
        Description("Safety and side effects", hepatitis_key_facts),
        Description("Ingredients", hepatitis_key_facts),
      ]),
      Vaccine('BCG', 2,3,'img/lung.png',VaccineStatus.done, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Hexa', 7,8,'img/penta.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('ROR', 11,12,'img/hand.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Pneumo', 11,12,'img/influenza.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('DTP-VPI', 2,3,'img/hepatitis_b.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('dTpa', 7,8,'img/rotavirus.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
    ];
  }
}
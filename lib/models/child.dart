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
      Vaccine('Hepatitis B - 1', 0,1,'img/hepatitis_b.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts),
        Description("Who should have the vaccine", hepatitis_key_facts),
        Description("Safety and side effects", hepatitis_key_facts),
        Description("Ingredients", hepatitis_key_facts),
      ]),
      Vaccine('Hepatitis B - 2', 2,3,'img/hepatitis_b.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Rotavirus', 7,8,'img/rotavirus.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Influenza', 11,12,'img/influenza.png',VaccineStatus.later, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Influenza', 11,12,'img/influenza.png',VaccineStatus.later, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Hepatitis B - 2', 2,3,'img/hepatitis_b.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
      Vaccine('Rotavirus', 7,8,'img/rotavirus.png',VaccineStatus.todo, [
        Description("Key vaccine facts", hepatitis_key_facts)
      ]),
    ];
  }
}
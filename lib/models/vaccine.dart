enum VaccineStatus {
  done,
  todo,
  later
}

class Vaccine{
  String name;
  int ageMin;
  int ageMax;
  late String ageRecommendation;
  String image;
  VaccineStatus vaccineStatus;
  bool isDone=false;


  Vaccine(this.name,this.ageMin,this.ageMax,this.image,this.vaccineStatus){
    ageRecommendation='$ageMin-$ageMax years old';
  }
}
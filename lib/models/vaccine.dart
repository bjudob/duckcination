enum VaccineStatus {
  done,
  todo,
  later
}

class Description {
  String title;
  String content;

  Description(this.title, this.content){}
}

class Vaccine{
  String name;
  int ageMin;
  int ageMax;
  late String ageRecommendation;
  String image;
  VaccineStatus vaccineStatus;
  bool isDone=false;
  List<Description> descriptions;


  Vaccine(this.name,this.ageMin,this.ageMax,this.image,this.vaccineStatus, this.descriptions){
    ageRecommendation='$ageMin-$ageMax years old';
  }
}
class People{
  String birth_year;
  String eye_color;
  String gender;
  String hair_color;
  int height;
  String homeworld;
  String name;

  People({
    required this.birth_year,
    required this.eye_color,
    required this.gender,
    required this.hair_color,
    required this.height,
    required this.homeworld,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'birth_year': this.birth_year,
      'eye_color': this.eye_color,
      'gender': this.gender,
      'hair_color': this.hair_color,
      'height': this.height,
      'homeworld': this.homeworld,
      'name': this.name,
    };
  }

  factory People.fromMap(Map<String, dynamic> map) {
    return People(
      birth_year: map['birth_year'] as String,
      eye_color: map['eye_color'] as String,
      gender: map['gender'] as String,
      hair_color: map['hair_color'] as String,
      height: int.parse(map['height'])  ,
      homeworld: map['homeworld'] as String,
      name: map['name'] as String,
    );
  }
}


class PeopleResult{
  List<People> results;

  PeopleResult({
    required this.results,
  });
}



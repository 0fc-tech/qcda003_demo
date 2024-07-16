class User{
  final id;
  String name;
  String surname;
  String? email;


  User({
    required this.id,
    required this.name,
    required this.surname,
    this.email,
  });

  Future<int> connect()async{
    await Future.delayed(Duration(seconds: 5));
    return Future.value(1);
  }
  User.withoutSurname({required this.id,
    required this.name,})
      :
        this.surname="";
}
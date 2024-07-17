import 'dart:io';

import 'user.dart';

void main(){
  final chaineCaracteres = "JeanMichel";
  int countCaracters = chaineCaracteres.length;
  print("La chaîne $chaineCaracteres a $countCaracters caractères");

  print("Donne moi le nombre de pied sous une table");
  var nbPiedSousTable = stdin.readLineSync();
  var nbTotalPieds = int.tryParse(nbPiedSousTable ?? "");
  //Si nb TotalPied est différent de nul
  nbTotalPieds?.ceil();
  if(nbTotalPieds != null){
    nbTotalPieds!.isOdd;
  }
  print("Votre table a donc $nbPiedSousTable pieds");

  double prixChaise = 149.99;
  int qantite = 84;
  print("la facture totale est de ${prixChaise*qantite}");

  //Paramètre optionnel nommé
  print(linkArrayWith([15,18,6,847,31,84,32512],delimiter: ","));
  List<Object>  listObject = [1,5654,87,23,21653,259];

  //Création d'utilisateur
  var jeanMichel = User(
      id: 10,
      name: "Dupont",
      surname: "JeanMichel"
  );
  var noSurname = User.withoutSurname(id: 15, name: "Denis");
  //Usage d'une Future
  jeanMichel.connect().then((valeur){
    print("Michel est connecté");
  });

}

int nbCaracteresDansChaine(String chaine) => chaine.length;
//[] paramètre positionnel
//{} paramètre nommé
String linkArrayWith(List<int> array, {delimiter = " ", suffixe = ""}){
  var string = "";
  array.forEach((entier){
    string += entier.toString() + delimiter;
  });
  return string + suffixe;
}

//Fonction avec généricité
List<T> listOf<T>(T element1,T element2,T element3,T element4)=>
   [element1,element2,element3,element4, element4];







// Classes abstractes (que no podrem inicialitzar)

// Declaren els mètodes que si o si han de tenir les classes que dependran d'aquesta,
// però encara no es sap quina serà la lògica

void main() {
  // Això donaria error ja que no es poden inicialitzar classes abstractes
  // final ironman = new Personatge('Tony Stark');
  final ironman = new Heroi('Tony Stark');
  ironman.malvat = false;
  print(ironman);

  final lex = new Heroi('Lex Luthor');
  lex.malvat = true;
  print(lex);
}

abstract class Personatge {
  late String nom;
  bool? malvat;

  Personatge({required String nom, bool malvat = false});

  @override
  String toString() {
    return '$nom - $malvat';
  }
}

// Aquesta classe ja te implementats els mètodes que estan declarats a la classe abstracte
class Heroi extends Personatge {
  int? valentia;
  Heroi(String nom)
      : super(nom: nom, malvat: false); //usam el const de la classe pare.
}

class Malvat extends Personatge {
  int malicia = 50;
  Malvat(String nom) : super(nom: nom, malvat: true);
}

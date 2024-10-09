/*  Les variables bàsiques en dart són:
    int, double, bool, String 
    List, Map i Set
    En Dart tot són objectes (classes)... i totes elles ja estan incorporades dins la llibreria.
    Les variables són referències als objectes, com punters,
     per això les variables poden tenir el valor de null.
    Les variables només es poden referir a objectes del mateix tipus.
*/

demoStrings() {
  // https://api.dart.dev/stable/3.5.3/dart-core/String-class.html
  // Com poder escriure Strings
  String s1 = 'Uep'; // podem usar ambdos tipus de cometes
  String s2 = "com anam?";
  String cometes = '"';
  String apostrof = "'";

  // Literal de string seguits es concatenen
  String texte = 'Lorem ipsum dolor sit amet,'
      'consectetur adipiscing elit,'
      'sed do eiusmod tempor...\n \\n és salt de linia';

  // Literal amb bots de línia
  String texteLlarg = """
    Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, 
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    """;

  // Operacions retornen String: + Concatenació, * Repetir, [] accedir caracter
  String s = 'James ' + 'Bond ';
  s += '0' * 2 + '7';

  // Interpolació de Strings
  double euros = 45.70;
  // si sòls volem incrustar un valor
  String missatge1 = 'Tinc $euros €';
  // si volem posar una expressió
  String missatge2 = 'Si tingues 5€ més, tindria ${euros + 5} €';

  // la conversió anterior també es podria fer d'aquesta forma
  double b = 1.44;
  String sb = '$b';

  print(missatge1);
  print(missatge2);
  print(sb);
}

demoNums() {
  // https://api.dart.dev/stable/3.5.3/dart-core/num-class.html
  // Operacions
  // / Divisió (return double), * multiplicaió, + Suma, - Resta (i Negatiu)
  // % Mòdul, ~/ Divisió entera

  // Comparacions, retorna bool
  //  ==, <, <=, >, >=
  int n = 3;
  double x = 1.05;
  num a = 2; // int i double sempre són num. No hi ha Float.

  // En operacions i comparacions es poden mesclar int i num.
  print((n / x));
  print((n / x) is double);
  print((n / x) is num);
}

demoVar() {
  // Si declaram el tipus a una variable sabem quin es, però també podem utilitzar var
  // var és una paraula reservada, quan ho utilitzam s'infereix el tipus
  //(del literal o del tipus de retorn, etc)
  var a = 7;

  // aquesta variable no se li assigna cap tipus, pot ser qualsevol
  var b; // realment és dynamic
  print('var b;');
  print(b); // el valor serà null

  // Totes les variables tenen tipus, però hi ha un tipus especial
  // dynamic és un tipus especial que engloba qualsevol objecte
  dynamic c;

  // a = 7.0; a ja és int, no li podem canviar el tipus.
  b = 5;
  b = 'b';
  c = 'paraula';
  c = 0.05;

  print(a);
  print(b);
  print(c);
}

demoCondicions() {
  dynamic a = true;
  if (a) {
    // només ens deixarà utilitzar variables bool. Null, num, ... no valen.
    print(true);
  } else {
    print(false);
  }
}

demoLlista() {
  //https://api.dart.dev/stable/3.5.3/dart-core/List-class.html
  // En dart List, Map i Set són genèrics, poden obtenir objectes de qualsevol tipus inclòs dynamic

  List<dynamic> stuff = [2, true, 'uep', [], null];
  // stuff2 tindrà tipus List<dynamic>
  var stuff2 = [2, false, null];

  var parells = <int>[2, 4, 6, 8];

  print(parells);
  print(stuff);
  var imparells = [1, 3, 5, '7'];

  print(imparells.runtimeType); //Perquè Object?
  print(stuff.runtimeType);

  imparells.add(7);
  // Donaria error
  //imparells.add('9');
  print(imparells);
  print(stuff.length);

  // com especificar el tipus d'un literal
  var paraules = <String>[];
  paraules.add('Uep');
  // això donaria error
  //paraules.add(5);

  // Accedir a les caselles d'una llista, mo9lt similar als altres llenguatges de prog.
  print(parells[2]);
  print(imparells[imparells.length - 1]);
  print(stuff[2]);

  //
}

demoLlistaIfFor() {
  bool llarga = false;
  var llista1 = [
    1,
    2,
    3,
    if (llarga) 4,
  ];
  /*
  var llista1 = [
    1,
    2,
    3
  ];
  if (llarga) {
    llista.add(4);
  }
  */
  print(llista1);

  int max = 10;

  var llista2 = [-3, for (int i = 0; i < max; i++) i * 2, 10];
  /*
  var llista2 = [];
  for (int i = 0; i < max; i++) {
    llista2.add(i);
  }
  */
  print(llista2);
}

demoSets() {
  Set<int> parells = {2, 4, 6};
  Set<dynamic> stuff = {
    null,
    2,
    'Uep',
    [1]
  };
  // Conjunt buit
  // Realment això és un map ja que ambdos utilitzen claus {}
  var map_buit = {};
  // Per forçar que sigui un conjunt utilitzar Set<tipus>
  print(parells);
  print(stuff);
  print(map_buit);

  parells.add(8);
  parells.addAll({10, 12});
  // També podem fer addAll a partir d'una llista
  parells.addAll([14, 16]);

  print(parells);
  print(parells.length);

  if (parells.contains(2)) {
    print('Si, conté el 2');
  }
}

demoMaps() {
  // En dart un Map ens permet associar un objecte a un altre
  // Serà especialment útil per a tractar json
  // Aquest map realment és un Map<String,dynamic>
  var M = {
    'nom': 'Toni',
    'cognom': 'Ballador',
    'edat': 70,
  };

  Map<int, String> nombres = {
    0: 'zero',
    1: 'u',
    2: 'dos',
    3: 'tres',
  };

  Map<dynamic, dynamic> stuff = {
    2: 'dos',
    'dos': 2,
    true: 'veritat',
    'fals': false,
  };

  print(M);
  print(nombres);
  print(stuff);

  print(nombres[2]);
  print(nombres[4]); //això donarà null

  nombres[5] = 'cinc';
  print(nombres[5]);

  // Longitud i també permet afegir tot un Map a un altre
  print(stuff.length);
  stuff.addAll(nombres);

  print(stuff);
}

demoRunes() {
  // Programació amb Runes (emoticones)
  // https://apps.timwhitlock.info/emoji/tables/unicode

  var cotxe = '\u{1F697} \u{1F699} \u{1F680} a';
  print(cotxe);

  /*També podem declarar un objecte de tipus Runes que contindrà
   * diversos emoticones, però per a imprimir-ho per pantalla
   * necessitarem passar-ho a String amb fromCharCodes()
  */
  Runes icones = new Runes('\u{1F697} \u{1F699} \u{1F680}');

  String iconesString = new String.fromCharCodes(icones);
  print(iconesString);
}

void main() {
  demoRunes();
}

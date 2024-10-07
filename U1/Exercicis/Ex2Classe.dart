/* Ex 2.
Agafeu dues llistes, per exemple:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
i escriviu un programa que retorni una llista que contingui
només els elements comuns entre ells (sense duplicats).
Assegureu-vos que el programa funcioni en dues llistes
 de mides diferents.
*/

intersectionSets(a, b) {
  // usam el mètode .intersection dels Sets
  var A = a.toSet();
  var B = b.toSet();

  var intersec = A.intersection(B);

  print('Usant .intersection(): ${intersec.toList()}');
}

algoritme2(a, b) {
  // programam la lògica
  List<int> resultat = []; // llista on posarem el resultat

  for (var num in a) {
    // per cada nombre dins a
    if (b.contains(num) & !resultat.contains(num)) {
      // Si està dins b I encara no està dins resultat
      resultat.add(num); // Afegeix-lo a resultat.
    }
  }
  print('Usant for: ${resultat}');
}

void main() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  intersectionSets(a, b);
  algoritme2(a, b);
}

/*Ex 11.
Realitza una funció que retorni un llistat de “n” nombres
 primers on “n” ens ve donat per paràmetre.
Pots emprar el programa que heu fet a l’apartat 6
 per a calcular si un nombre és primer.

Hi ha diferents algoritmes per fer aquesta tasca. Aquí alguns exemples:
https://www.baeldung.com/cs/prime-number-algorithms

A continuació, una implamentació de la Criba de Sundaram.
 */
import 'dart:math';

void main(List<String> arguments) {
  int n = int.parse(arguments[0]);
  int k = ((n - 1) / 2).floor();

  List<bool> a = List.filled(k + 1, true);

  for (var i = 1; i < sqrt(k); i++) {
    int j = i;
    while (i + j + 2 * i * j <= k) {
      a[i + j + 2 * i * j] = false;
      j++;
    }
  }

  //print(a.lastIndexOf(true) * 2 + 1);

  List<int> primers = (n > 2) ? [2] : [];
  for (var i = 1; i < a.length; i++) {
    if (a[i]) primers.add(2 * i + 1);
  }

  print(primers);
}

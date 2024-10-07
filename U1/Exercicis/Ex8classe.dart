/* Ex 8.
Escriu un programa que donada una longitud (expressada 
numericament int), generi una contrasenya segura de la 
longitud esmentada totalment aleatòria amb caràcters 
alfanumèrics. 
https://www.ascii-code.com/
 */

import 'dart:io';
import 'dart:math';

int scan_n() {
  int n = 0;
  while (n <= 0) {
    print('Escriu un int positiu:');
    String? input = stdin.readLineSync();
    int? temp = int.tryParse((input == null) ? '' : input);
    if (temp != null) n = temp;
  }
  return n;
}

void main() {
  int n = scan_n();
  String contrasenya = '';

  while (contrasenya.length <= n) {
    contrasenya += String.fromCharCode(33 + Random().nextInt(94));
  }

  print('Contrasenya: $contrasenya');
}

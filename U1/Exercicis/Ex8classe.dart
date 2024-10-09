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
  int n = 0; // var a retornar

  // repeteix fins que el inpt sigui el desitjat
  while (n <= 0) {
    print('Escriu un int positiu:');
    String? input = stdin.readLineSync();
    int? temp = int.tryParse(input ?? ''); // condicio? ret true : ret false
    if (temp != null) n = temp;
  }

  return n;
}

void main() {
  int n = scan_n(); //  input de n per pantalla
  String contrasenya = ''; // variable a retornar

  // generar n caracters ASCII 33-126 aleatoris i afegir-los a la str contrasenya.
  while (contrasenya.length <= n) {
    contrasenya += String.fromCharCode(33 + Random().nextInt(94));
  }

  print('Contrasenya: $contrasenya');
}

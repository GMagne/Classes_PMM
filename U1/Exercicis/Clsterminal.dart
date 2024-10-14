import 'dart:io';

void main() {
  String? input = '';
  while (input != null) {
    input = stdin.readLineSync();
    print(input);

    if ('exit' == input) return;
    print('\x1B[2J\x1B[0;0H');
  }
}

String horaString(int h, int m, int s) {
  return '01:02:03';
}

void main(List<String> args) {
  int h = int.parse(args[0]); // 0-23
  int m = int.parse(args[1]); // 0-59
  int s = int.parse(args[2]); // 0-59

  print(horaString(h, m, s));
}

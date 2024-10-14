//https://jelenaaa.medium.com/what-are-in-dart-df1f11706dd6 ...?

void main() {
  int? n;
  print(n);
  n = 5;
  n ??= 6;
  print(n ?? 0);
}

import 'dart:io';

int faktorial(int n) {
  if (n <= 1) return 1;
  return n * faktorial(n - 1); // versi rekursif
}

void main() {
  stdout.write("Masukkan bilangan untuk faktorial: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Faktorial dari $n = ${faktorial(n)}");
}

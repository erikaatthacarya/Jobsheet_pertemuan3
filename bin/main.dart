import 'dart:io';

bool isGenap(int n) => n % 2 == 0;

bool isPrima(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Masukkan sebuah bilangan: ");
  int angka = int.parse(stdin.readLineSync()!);

  print(isGenap(angka)
      ? "$angka adalah bilangan genap"
      : "$angka adalah bilangan ganjil");

  print(isPrima(angka)
      ? "$angka adalah bilangan prima"
      : "$angka bukan bilangan prima");
}

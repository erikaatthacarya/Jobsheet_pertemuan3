import 'dart:io';

int faktorial(int n) {
  if (n <= 1) return 1;
  return n * faktorial(n - 1);
}

bool isGenap(int n) => n % 2 == 0;

bool isPrima(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  while (true) {
    print("\n=== MENU PERHITUNGAN ===");
    print("1. Hitung Faktorial");
    print("2. Cek Bilangan Genap/Ganjil");
    print("3. Cek Bilangan Prima");
    print("4. Keluar");

    stdout.write("Pilih menu: ");
    int pilih = int.parse(stdin.readLineSync()!);

    switch (pilih) {
      case 1:
        stdout.write("Masukkan angka: ");
        int n = int.parse(stdin.readLineSync()!);
        print("Faktorial dari $n = ${faktorial(n)}");
        break;
      case 2:
        stdout.write("Masukkan angka: ");
        int n = int.parse(stdin.readLineSync()!);
        print(isGenap(n)
            ? "$n adalah bilangan genap"
            : "$n adalah bilangan ganjil");
        break;
      case 3:
        stdout.write("Masukkan angka: ");
        int n = int.parse(stdin.readLineSync()!);
        print(isPrima(n)
            ? "$n adalah bilangan prima"
            : "$n bukan bilangan prima");
        break;
      case 4:
        print("Program selesai, terima kasih!");
        return;
      default:
        print("Pilihan tidak valid!");
    }
  }
}

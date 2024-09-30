import 'dart:io';

void main() {
  double reamur(double celcius) {
    return celcius * 4 / 5;
  }

  double fahrenheit(double celcius) {
    return (celcius * 9 / 5) + 32;
  }

  double kelvin(double celcius) {
    return celcius + 273.15;
  }

  print("Masukkan Angka Suhu dalam Celcius: ");
  double celcius = double.parse(stdin.readLineSync()!);

  print("Pilih Metode: ");
  print("1. Convert ke Reamur");
  print("2. Convert ke Fahrenheit");
  print("3. Convert ke Kelvin");

  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      print("Suhu dalam Reaumer: ${reamur(celcius)}°R");
      break;
    case 2:
      print("Suhu dalam Fahrenheit: ${fahrenheit(celcius)}°F");
      break;
    case 3:
      print("Suhu dalam Kelvin: ${kelvin(celcius)} K");
      break;
    default:
      print("Pilihan tidak Valid!. Pilihan antara 1, 2, dan 3");
  }
}

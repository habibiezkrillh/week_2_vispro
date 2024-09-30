import 'dart:io';

class RekeningBank {
  // Atribut private untuk saldo
  double _saldo;

  // Konstruktor untuk inisialisasi saldo awal
  RekeningBank(this._saldo);

  // Metode untuk menyetor uang
  void deposit(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      stdout.write('Deposit Sebesar Rp$jumlah berhasil.');
    } else {
      stdout.write('Jumlah deposit harus lebih dari nol.');
    }
  }

  // Metode untuk menarik uang
  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      stdout.write('Penarikan Sebesar Rp$jumlah berhasil.');
    } else {
      stdout.write(
          'Penarikan gagal. Jumlah tidak valid atau saldo tidak mencukupi.');
    }
  }

  // Metode untuk mengecek saldo
  void cekSaldo() {
    stdout.write('Saldo kamu saat ini: Rp$_saldo');
  }
}

class RekeningTabungan extends RekeningBank {
  // Konstruktor untuk RekeningTabungan yang memanggil konstruktor dari RekeningBank
  RekeningTabungan(double saldo) : super(saldo);

  // Metode untuk menerapkan bunga
  void terapkanBunga(double sukuBunga) {
    if (sukuBunga > 0) {
      double bunga = _saldo * sukuBunga / 100;
      deposit(bunga);
      stdout.write('Bunga sebesar ${sukuBunga}% telah diterapkan.');
    } else {
      stdout.write('Suku bunga harus positif.');
    }
  }
}

void main() {
  // Membuat objek rekening tabungan dengan saldo awal
  RekeningTabungan rekening = RekeningTabungan(1000.0);

  // Mengecek saldo awal
  rekening.cekSaldo();

  // Menambah setoran deposit
  rekening.deposit(750.0);

  // Mengecek saldo setelah deposit
  rekening.cekSaldo();

  // Melakukan penarikan
  rekening.tarik(245.0);

  // Mengecek saldo setelah penarikan
  rekening.cekSaldo();

  // Menerapkan bunga 5%
  rekening.terapkanBunga(3.0);

  // Mengecek saldo setelah bunga diterapkan
  rekening.cekSaldo();
}

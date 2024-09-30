class ATM {
  double _balance = 0;

  // Methods untuk setor uang
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit Sukses \$${amount.toStringAsFixed(2)}");
    } else {
      print("Jumlah setoran harus lebih dari nol");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (amount <= _balance) {
        _balance -= amount;
        print("Penarikan Berhasil \$${amount.toStringAsFixed(2)}");
      } else {
        print(
            "Saldo anda tidak mencukupi. Sisa saldo anda adalah \$${_balance.toStringAsFixed(2)}");
      }
    } else {
      print("Jumlah Penarikan harus lebih dari nol");
    }
  }

  // Cek Saldo
  void checkBalance() {
    print("Saldo kamu saat ini adalah \$${_balance.toStringAsFixed(2)}");
  }
}

void main() {
  ATM myATM = ATM();

  myATM.checkBalance();
  myATM.deposit(100.0);
  myATM.checkBalance();
  myATM.withdraw(30.0);
  myATM.checkBalance();
  myATM.withdraw(80.0);
}

class Student {
  String nama;
  String idStudent;
  double nilai;

  Student(this.nama, this.idStudent, this.nilai);

  void displayInfo() {
    print("Nama Pelajar: $nama");
    print("ID Pelajar: $idStudent");
    print("Nilai: $nilai");
  }

  bool isLulus() {
    return nilai >= 70;
  }
}

void main() {
  Student student = Student("Excel", "1298045691", 86.5);

  student.displayInfo();

  if (student.isLulus()) {
    print("${student.nama} dinyatakan lulus!.");
  } else {
    print("${student.nama} dinyatakan tidak lulus!!");
  }
}

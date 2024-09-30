import 'dart:io';

class Vehicle {
  String name;
  double speed;

  Vehicle(this.name, this.speed);

  void move() {
    print("The Vehicle moves");
  }
}

class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  @override
  void move() {
    print("The car moves so fast on the roads");
  }
}

class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  @override
  void move() {
    print("The bike moves swiftly through the traffic");
  }
}

void main() {
  print("Do you want to make a car or a bike??");
  String? choice = stdin.readLineSync()?.toLowerCase();

  print("Input the name of your vehicle: ");
  String? name = stdin.readLineSync();

  print("Enter the speed of the vehicle: ");
  double? speed = double.tryParse(stdin.readLineSync() ?? "0");

  if (choice == "car") {
    Car car = Car(name ?? "Default Car", speed ?? 0.0);
    car.move();
  } else if (choice == "bike") {
    Bike bike = Bike(name ?? "Default Bike", speed ?? 0.0);
    bike.move();
  } else {
    print("Invalid Choice!!!. Please choose either Car or Bike");
  }
}

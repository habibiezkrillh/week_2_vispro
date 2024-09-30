class Animal {
  // Sound Methods
  void sound() {
    print("This animal makes a sound!!");
  }

  // Eat Methods
  void eat() {
    print("This animal was eating");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("The dog barks: GUK GUK!!!");
  }

  @override
  void eat() {
    print("The dog is eating a dog food :)");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("The cat meows: Miuww Miuwww!!!");
  }

  @override
  void eat() {
    print("The cat is eating a Whiskas");
  }
}

void main() {
  // Objek Dog dan Cat
  Dog dog = Dog();
  Cat cat = Cat();

  // Output Behaviour nya Dog
  print("Dog: ");
  dog.sound();
  dog.eat();

  print('');

  // Output Behaviour Kucing
  print("Cat: ");
  cat.sound();
  cat.eat();
}

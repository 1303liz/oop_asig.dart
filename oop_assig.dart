// 1. Object-Oriented Model with Classes and Inheritance
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('$name makes a sound.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print('$name barks.');
  }
}

// 2. Class Implementing an Interface
abstract class Shape {
  double calculateArea();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// 3. Method Overriding
class Vehicle {
  void startEngine() {
    print('Engine started.');
  }
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car engine started.');
  }
}

// 4. Initializing an Instance from a File (Mocked)
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

Person readPersonFromFile(String filename) {
  // Read data from the file and parse it (mocked for demonstration)
  return Person('John Doe', 30);
}

// 5. Loop Demonstration
class Counter {
  int count = 0;

  void incrementBy(int n) {
    for (int i = 0; i < n; i++) {
      count++;
    }
  }
}

void main() {
  // Example usage
  final myDog = Dog('Buddy');
  myDog.speak(); // Output: "Buddy barks."

  final myCircle = Circle(5.0);
  print('Circle area: ${myCircle.calculateArea()}');

  final myCar = Car();
  myCar.startEngine(); // Output: "Car engine started."

  final personFromFile = readPersonFromFile('person_data.csv');
  print('Name: ${personFromFile.name}, Age: ${personFromFile.age}');

  final myCounter = Counter();
  myCounter.incrementBy(5);
  print('Count: ${myCounter.count}'); // Output: 5
}
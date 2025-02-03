// Classes and Objects in Dart

class Person {
  String name;
  int age;

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Person p1 = Person();
  p1.name = "Maddy";
  p1.age = 25;
  p1.display();
}


// Constructor with Positional Parameters and Arguments

class Student {
  String name;
  int age;

  // Constructor with positional parameters
  Student(this.name, this.age);

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Student s1 = Student("Ali", 22);
  s1.display();
}


// Constructor with Named Parameters and Arguments

class Employee {
  String name;
  int age;

  // Constructor with named parameters
  Employee({required this.name, this.age = 30});

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Employee e1 = Employee(name: "Maddy", age: 28);
  Employee e2 = Employee(name: "Arif"); // Default age 30

  e1.display();
  e2.display();
}


// Single Level  (Inheritance)
// A class can inherit from another class using extends.

class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog barks");
  }
}

void main() {
  Dog d = Dog();
  d.makeSound(); // Inherited method
  d.bark();
}

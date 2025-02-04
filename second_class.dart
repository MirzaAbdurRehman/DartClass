// class Employee {

//   void Display(){
//     print('This Is Parent Class');
//   }
// }

// class Child extends Employee{  // INHERITnce

// }

// void main(){

//   Child obj1 = Child();  // Object 
//   obj1.Display();

// }



// Multilevel Inheritance


import 'dart:async';

// class Grandfather{
//   void Display(){
//     print("This is GrandFather class");
//   }
// }


// class Parent extends Grandfather{
//   void Display1(){
//     print("This is Parent class");
//   }
// }

// class Child extends Parent{
//   void Display2(){
//     print("This is Child class");
//   }
// }

// void main(){
//   Child name = Child();
//   name.Display2();
//   name.Display1();
//   name.Display();
// }



// Hierarchial Inheritance 


// class Grandfather{
//   void Display(){
//     print("This is GrandFather class");
//   }
// }


// class p1 extends Grandfather{
//   void Display1(){
//     print("This is Parent class");
//   }
// }

// class p2 extends Grandfather{
//   void Display2(){
//     print("This is Child class");
//   }
// }

// class c1 extends p1{
//   void Display3(){
//     print("This is Child class of p1 class");
//   }
// }

// class c2 extends p1{
//   void Display4(){
//     print("This is Child class of p1 class");
//   }
// }

// class c3 extends p2{
//   void Display5(){
//     print("This is Child class of p2 class");
//   }
// }

// class c4 extends p2{
//   void Display6(){
//     print("This is Child class of p2 class");
//   }
// }

// void main(){
//   c1 obj1 = c1();
//   obj1.Display();
//   obj1.Display1();
//   obj1.Display3();


//   c2 obj2 = c2();
//   obj2.Display();
//   obj2.Display1();
//   obj2.Display4();

//   c3 obj3 = c3();
//   obj3.Display();
//   obj3.Display2();
//   obj3.Display5();

//   c4 obj4 = c4();
//   obj4.Display();
//   obj4.Display2();
//   obj4.Display6();

// }


// Multiple Inheritance

// mixin A{
//   void MethodA(){
//     print('This is P1 class');
//   }
// }

// mixin B{
//    void MethodB(){
//     print('This is P2 class');
//   }
// }

// mixin C{
//    void MethodC(){
//     print('This is P3 class');
//   }
// }

// class D with A,B,C{

// }

// void main(){
//   D obj1 = D();
//   obj1.MethodA();
//   obj1.MethodB();
//   obj1.MethodC();
// }


// Polymorphisim 

class Manager{
  void Info(){
    print('This is a Manger class');
  }
}

class E1 extends Manager{
  @override
  void Info(){
    print('This is a Employee 1 class');
  }
}

class E2 extends E1{
  @override
  void Info(){
    print('This is a E2  class');
  }
}


void main(){
  Manager obj1 = E1();
  obj1.Info();

  E1 obj2 = E2();
  obj2.Info();

}


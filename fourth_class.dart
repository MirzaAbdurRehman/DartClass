// Map  like as a object in javaScript

// void main(){
//   Map<String, int> studentNames ={
//      'Salman': 23,
//      'Ali': 24,
//       'Charlie': 25
//   };

// print(studentNames);
// print(studentNames['Salman']);

// studentNames['Bob'] = 27;
// print(studentNames);

// print(studentNames.containsKey('Ali'));

// studentNames.remove('Bob');
// print(studentNames);

// print(studentNames.keys);
// print(studentNames.values);

// }



// implements 

//  abstract class Animal{  // P.c
//   void makeSound(); // no define body bc of abstract class  unnecessary info hide
// }

// class Dog implements Animal{
//   @override 
//    void makeSound(){
//     print("dOG IS BarkING");
//    }
// }

// class Cat implements Animal{
//   @override 
//    void makeSound(){
//     print("cAT IS Meow!");
//    }
// }

// void main(){
//   Dog obj1 = Dog();
//   Cat obj2 =  Cat();

//   obj1.makeSound();
//   obj2.makeSound();
// }



//  Abstract 

// abstract class Vehicle{
//   void Start();

//   void Stopped(){
//     print('Vehicle Stopped');
//   }
// }
// class car extends Vehicle{
//   @override
//  void Start(){
//   print('Car Started');
//  }
// }

// class Bike extends Vehicle{
//   @override
//  void Start(){
//   print('Bike Started');
//  }
// }



// void main(){
//   car obj = car();
//   Bike obj1 =  Bike();

//   obj.Start();
//   obj.Stopped();

//   obj1.Start();
//   obj1.Stopped();

// }




// Two types of methpd in oop

// 1.  Instance Method:   jinka object banana zarori hai
// 2. Class Method:  USE STATIC keyword that why  with out object its run perfectly.



// 1.  Instance Method: 

// class Car{
//  late String brand;

//  Car(this.brand);

//  void showBrand(){
//   print('Car Brand: ${brand}');
//  }

// }


// void main(){
//   Car obj =  Car("Honda");  // object creation
//   obj.showBrand();
// }



// 2. Class Method: 

// class MathUtils{
//   static int square(int num){  // USE STATIC keyword that why not making object
//     return num * num; 
//    }
// }

// void main(){
//   print(MathUtils.square(5));
// }



// try Catch Exception Handling

// void main(){
//   try{
//     int result = 10 ~/ 0;
//     print(result);
//   }catch(error){
//     print('Exception caught: ${error}');
//   }
// }

// output:  Exception caught: IntegerDivisionByZeroException

// void main(){
//   try{
//    List<int> numbers= [1,2,3];
//     print(numbers[5]);
//   }on RangeError{
//     print('Range Eroor caught: Index out of bound!');
//   }
// }



class CustomsException implements Exception{  // Custom Exception
  late String message;

  CustomsException(this.message);

  @override
  String toString()=> "CustomException ${message}";
}

void validate(int age){
    if(age < 18){
      throw CustomsException("Age must be grater than 18");
    }else{
      print("Valid age: ${age}");
    }
}


void main(){
  try{              // Try Catch Block
    validate(19);
  }catch(error){
    print(error);
  }
}


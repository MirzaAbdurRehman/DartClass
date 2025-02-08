// Private Access Modifier

// class Person{
//   late String _name;

//   Person(this._name);

//   void showname(){
//     print('Your Name is : ${_name}');
//   }
// }

// void main(){
//   Person obj1 = Person("Ali");
//   obj1.showname();
// }


// Getter and Setter

// class Student{

//  late String _name;

//  String get name => _name;  // Getter

//  set name(String newname){
//   if(newname.length >= 3){
//     _name = newname;
//   }else{
//     print("Must be atleast 3 words or greater");
//   } 
//  }
// }

// void main(){
//   Student obj1 = Student();
//   obj1.name = "Hamza";
//   print(obj1.name);
// }


//Super Keyword


// class Parent{

//   void showMessage(){
//     print('This is a Parent class');
//   }

// }

// class Child extends Parent{

//   @override
//   void showMessage(){
   
//      print('This is a Child class');
//      super.showMessage();
//   }

// }

// void main(){
//   Child obj = Child();
//   obj.showMessage();
// }


// Encapsulation

// class BankAccount{

//   late double _balance = 0.0 ;  // Private Varible

//   void deposit(double amount){
//     if(amount >0){
//       _balance += amount;
//       // _balance = _balance + amount;
//       print("Deposited: \$${amount}");
//     }else{
//       print("Invalid Amount");
//     }
//   }

//   double get balance => _balance;
// }

// void main(){
//   BankAccount obj = BankAccount();
//   obj.deposit(-100000);
//   print("Current Balance \$${obj.balance}");
// }


// List same like array

void main(){
  List <String> Stdname = ["Salman","Aressha","Kashif",'Nusrah','Maryam'];
  print(Stdname);
  // print(Stdname[2]);

  Stdname.add("Dawar");
  print(Stdname);

  Stdname.addAll(["Abdullah","Ali"]);
  print(Stdname);

  Stdname.insert(3, "Abdur Rehman");
   print(Stdname);

   Stdname.remove('Ali');
    print(Stdname);

    Stdname.removeAt(3);
      print(Stdname);
    

    Stdname.removeLast();
    print(Stdname);

    List<int> num = [30,20,10];
    num.sort();
    print(num);
}
//  Encapsulation (Data Hiding & Controlled Access)


// class Order {
//   String _orderId;
//   double _amount;
  
//   Order(this._orderId, this._amount);

//   // Getter with validation
//   String get orderId => _orderId;

//   // Controlled access with validation
//   double get amount {
//     if (_amount <= 0) {
//       throw Exception("Invalid order amount!");
//     }
//     return _amount;
//   }

//   // Encapsulated method
//   void _applyDiscount(double discount) {
//     if (discount < 0 || discount > _amount) {
//       throw Exception("Invalid discount value!");
//     }
//     _amount -= discount;
//   }

//   void applyPromoCode(String code) {
//     if (code == "SAVE10") {
//       _applyDiscount(10.0);
//     } else {
//       print("Invalid Promo Code");
//     }
//   }
// }

// void main() {
//   Order order = Order("ORD123", 100.0);
//   print("Order Amount: ${order.amount}"); // Output: 100.0

//   order.applyPromoCode("SAVE10");
//   print("After Discount: ${order.amount}"); // Output: 90.0
// }



// Inheritance (Code Reusability & Hierarchy)


// Base Class
// class Order {
//   String orderId;
//   double amount;
  
//   Order(this.orderId, this.amount);

//   void processOrder() {
//     print("Processing order $orderId...");
//   }
// }

// // Derived Classes
// class ExpressOrder extends Order {
//   ExpressOrder(String orderId, double amount) : super(orderId, amount);

//   @override
//   void processOrder() {
//     print("Processing Express Order $orderId (Fast Delivery)...");
//   }
// }

// class InternationalOrder extends Order {
//   String country;
  
//   InternationalOrder(String orderId, double amount, this.country) : super(orderId, amount);

//   @override
//   void processOrder() {
//     print("Processing International Order $orderId for $country...");
//   }
// }

// void main() {
//   Order normal = Order("ORD001", 100.0);
//   ExpressOrder express = ExpressOrder("ORD002", 150.0);
//   InternationalOrder international = InternationalOrder("ORD003", 200.0, "USA");

//   normal.processOrder();         // Output: Processing order ORD001...
//   express.processOrder();        // Output: Processing Express Order ORD002 (Fast Delivery)...
//   international.processOrder();  // Output: Processing International Order ORD003 for USA...
// }



//  Polymorphism (Dynamic Behavior)


// Abstract Class for Payment Methods
// abstract class PaymentMethod {
//   void pay(double amount);
// }

// // Concrete Implementations
// class CreditCardPayment implements PaymentMethod {
//   @override
//   void pay(double amount) {
//     print("Paid \$$amount via Credit Card");
//   }
// }

// class PayPalPayment implements PaymentMethod {
//   @override
//   void pay(double amount) {
//     print("Paid \$$amount via PayPal");
//   }
// }

// class BitcoinPayment implements PaymentMethod {
//   @override
//   void pay(double amount) {
//     print("Paid \$$amount via Bitcoin");
//   }
// }

// // Order Class Using Polymorphism
// class Order {
//   String orderId;
//   double amount;
//   PaymentMethod paymentMethod;

//   Order(this.orderId, this.amount, this.paymentMethod);

//   void completePayment() {
//     paymentMethod.pay(amount);
//   }
// }

// void main() {
//   Order order1 = Order("ORD101", 100.0, CreditCardPayment());
//   Order order2 = Order("ORD102", 150.0, PayPalPayment());
//   Order order3 = Order("ORD103", 200.0, BitcoinPayment());

//   order1.completePayment(); // Output: Paid $100.0 via Credit Card
//   order2.completePayment(); // Output: Paid $150.0 via PayPal
//   order3.completePayment(); // Output: Paid $200.0 via Bitcoin
// }



// Abstraction (Hiding Complexity & Factory Pattern)


// Abstract Class
// abstract class Shipping {
//   void shipOrder();
// }

// // Concrete Implementations
// class StandardShipping implements Shipping {
//   @override
//   void shipOrder() {
//     print("Shipping via Standard Courier...");
//   }
// }

// class ExpressShipping implements Shipping {
//   @override
//   void shipOrder() {
//     print("Shipping via Express Courier...");
//   }
// }

// // Factory Class
// class ShippingFactory {
//   static Shipping createShipping(String type) {
//     if (type == 'standard') return StandardShipping();
//     if (type == 'express') return ExpressShipping();
//     throw Exception("Invalid shipping type");
//   }
// }

// void main() {
//   Shipping standard = ShippingFactory.createShipping('standard');
//   Shipping express = ShippingFactory.createShipping('express');

//   standard.shipOrder(); // Output: Shipping via Standard Courier...
//   express.shipOrder();  // Output: Shipping via Express Courier...
// }

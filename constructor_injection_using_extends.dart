void main(){
  final p1 = const PaymentProcessor(MasterCard());// MasterCard() object injected in constructor
  final p2 = const PaymentProcessor(PayPal());// PayPal() object injected in constructor
  print("paying using Master card");
  p1.pay(10);
  print("paying using paypal");
  p2.pay(30);

}
//abstract class with "validatePayment" one abstract method
abstract class PaymentValidator {

  const PaymentValidator();
  void validatePayment(int amount);
}


class MasterCard extends PaymentValidator {

// Define date, card number and the constructor
//date and card number will be intialize in constructor
//i.e. MasterCard({required this.date,required this.card_number});


  const MasterCard();
//overrides this method
  @override
  void validatePayment(int amount) {


    print("Master card $amount");



  }

}

class PayPal extends PaymentValidator {
  // Define an email and the constructor
  //email will be intialize in constructor
  //

  const PayPal();
//i.e. PayPal({required this.email});
  @override
  void validatePayment(int amount) {
    print("PayPal $amount");
  }


}

// another class
class PaymentProcessor {

  final PaymentValidator _validator; //_validator is a object of abstract class
  const PaymentProcessor(this._validator);//in constructor we are intializing a abstract class instance with implemented class
  // based upon masterclass or paypal object is supplied
  // so we have a dependency here,that dependency we solved by providing a value in class constructor
  // hence its called as constructor injection i.e. injecting this class object dependency using constructor
  void pay(int amount) {
    print("called using  type of ${_validator.runtimeType}");

    _validator.validatePayment(amount);//based upon the _validator object type it calls Master class or pay pal method
  }}
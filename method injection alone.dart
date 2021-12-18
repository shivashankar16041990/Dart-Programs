
//abstract class with one abstact method
abstract class CheckProcessor
{
  const  CheckProcessor();
  void isActive();
}

//implements above abstract class
class MasterCardChecks implements CheckProcessor{
  @override
  void isActive() {
    print("Checking Master card Check Wheather Api is active.....");

  }

}

//implements above abstract class
class PayPalChecks implements CheckProcessor{
  @override
  void isActive() {
    print("Checking PayPal card Check Wheather Api is active.....");

  }

}

//another class

class PaymentProcessor{



  void isActive(CheckProcessor check)  //parameter is a abstract class and injection is done using method hence its called as method injection
  {
    return check.isActive();
  }



}


void main()
{
  var mastercheck=MasterCardChecks();
  var paymentprocessor_master=PaymentProcessor();
  paymentprocessor_master.isActive(mastercheck); // method injection


  var paypalcard=PayPalChecks();
  var paymentprocessor_paypal=PaymentProcessor( );
  paymentprocessor_paypal.isActive(paypalcard); // method injection



}

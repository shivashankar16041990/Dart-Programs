abstract class customer
{
  var balance;   //allowed


  void displaybal(); //abstract methods needs to be implemented inside child class
  void setbalance(var bal); //abstract methods needs to be implemented inside child class
  int getbalance()    //allowed
  {
    return balance;
  }





}

class mycustomer extends customer
{
  void displaybal()
  {
    print("from child class");
    print (balance);

  }
  void setbalance(var bal)
  {
    this.balance=bal;
  }



}

void main(){

  var c1=mycustomer();
  c1.balance=1000;
  c1.displaybal();
  c1.setbalance(5000);
  c1.displaybal();
  print(c1.getbalance());


}
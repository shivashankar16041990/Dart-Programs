void main()
{
  var c1=customer();
  c1.balance=-1000;
  print(c1.balance);
}
class customer{
  double _balance=0;
  void set balance(double bal)
  {
    try {
      if (bal < 0) {
        assert(false, "you cannot make balance to zero");
      }
      else
        _balance=bal;
    }
    catch(e)
    {
      print(e);
    }


  }
  double get balance =>_balance;

}
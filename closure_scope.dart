void main()
{
   int i=10;
    myfun ()
  {
      print("from myfun");
      i=40;
      print(i);
  };
    myfun();
  // myfun2();


  var recall_myfun=myfun2(); //this make m =50
  recall_myfun();           //this makes m=50 to 60 (outer function member m scope is still there for inner function)

}

 Function myfun2()
{
  print("from myfun2");
  int m=50;

  Assign_and_print()
    {
     print("from Assign_and_print");
     print(m);
      m=60;
     print(m);
   }
  return Assign_and_print;
}
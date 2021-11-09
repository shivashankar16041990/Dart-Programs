void main()
{

  try {
    int result = 16 ~/ 0;
    print(result);
  }

  //using on clause
  /*
  on IntegerDivisionByZeroException{
    print("using the on clause you cannot divide by zero");
  }

   */
 //using catch block
  catch(e,s)
  {
    print("you have got exception $e");
    print("Stacktrace  $s");
  }
  //using finally ,it will be executed even you have got exception or not
  finally
  {
    print("from finally");
  }
  print("end of Program");

}
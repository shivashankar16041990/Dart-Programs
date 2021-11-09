
void main ()
{

  int depositeAmount=300000;

  try{
    if (depositeAmount>40000)
      throw new CustomException();

  }
  on CustomException catch(e)
  {
    print(e.errorMessage());
  }
 finally{
    print("Finished from Finallly");
 }



}
class CustomException implements Exception{
  String errorMessage()
  {
    return "Cannot deposite amount greater than 40k";
  }


}




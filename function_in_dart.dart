void main()
{
 //call a simple function
  findArea(10, 20);

  // simple function with no return type
  findArea2(30, 20);
  print(findArea2(50,70));

  //calling function with int return type
  print(findArea3(50,70));

  // calling a function with required arguments
  print(findArea4(70,80));

  //calling a  function with positional parameter

  findArea5(10,20);

  //calling a  function with positional parameter
  findArea6(10,20);
  findArea6(10,20,30);
//calling a functon with named parameter irrespective of order of parameter
findArea7(10);
  findArea7(10,breath: 20);
  findArea7(10,breath: 20,height: 50);
  findArea7(10,height: 50,breath: 20);
  //functon with default values parameter
  findArea8(60,height: 20);
  //function with default values
  findArea9(10);
 findArea9(10,breath:50,height:50);



}

//simple function

void findArea(int length,int breath)
    {

          print("OUTPUT of findArea \n" );
          print("The Area is ${length*breath}");

    }
// simple function with no return type
 findArea2(int length,int breath)
{

  print("OUTPUT of findArea2 \n" );
  print("The Area is ${length*breath}");

}

//return type with int

int findArea3(int length,int breath)
{

  print("OUTPUT of findArea 3 \n" );
  return length*breath;

}
//function with required parameter
 int findArea4(int length,int breath)
{
  print("OUTPUT of findArea 4 \n" );
  return length*breath;

}

//function with positional parameter
//this will initialize height with null value
void findArea5(int length,int breath,[var height])
{
  print("OUTPUT of findArea 5\n" );
  print(length);
  print(breath);
  print(height);

}

//same as above without var
void findArea6(int length,int breath,[height])
{
  print("OUTPUT of findArea 6 \n" );
  print(length);
  print(breath);
  print(height);

}
//functon with named parameter irrespective of order of parameter
void findArea7(int length,{var breath,var height})
{
  print("OUTPUT of findArea 7 \n" );
  print(length);
  print(breath);
  print(height);

}
//functon with default values parameter
void findArea8(int length,{var breath=10,var height=30})
{
  print("OUTPUT of findArea 8 \n" );
  print(length);
  print(breath);
  print(height);

}

//function with default values

void findArea9(int length,{var breath=10,var height=30})
{
  print("OUTPUT of findArea 9 \n" );
  print(length);
  print(breath);
  print(height);

}

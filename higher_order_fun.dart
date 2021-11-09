//function in dart are objects
//function can be returned from anothe function
//function can be given as a parameter to another function
//hence it is called as functional programming
//This code will print factorial of even no 1 to 10

void main()
{
 Function iseven =(var num)=>(num%2==0)?true:false;

 calculate_fact(1,20,iseven);


}

Function calculate_fact=(var start,var end,Function iseven)
{
    while (start<end)
   {

       if (iseven(start))
          //  print("start $start") ;
         {
            var    fact=Factorial(start);
              fact;
         }

       ++start;
     };





};
Function  Factorial =(var num)
{
 var result=1;
for (var i=1;i<=num;i++)
  {
    result=i*result;
  }

print(result);
};
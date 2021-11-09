void main()

{
addition(10,20);
}



void addition(var i,var j)
{
//defination of function inside a function
  void even()=>print("even addition");
  void odd()=>print("odd addition");
  if ((i+j)%2==0)
    even();
  else
    odd();




}
// interfaces in dart are classes

class Area
{
  void calculate_area(var length,var breath)
  {
    print(length*breath);

  }



}
//implements denotes that u are implementing all methods of the class
//you can implement more than one classes in interface

class triangle implements Area ,perimeter
{
  void calculate_area(var length,var breath)
  {
    print(0.5 *length*breath);

  }
}
void main()
{
  var t1=triangle();
  t1.calculate_area(10, 20);
}

class perimeter
{
    //your code
}
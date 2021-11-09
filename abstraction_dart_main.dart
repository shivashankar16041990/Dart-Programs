import 'abstraction_dart_class.dart';


void main()
{
var obj1=myclass();
//below statement will give error because of scope of _name variable
  //it is limited to only that file
//print(obj1._name);
print(obj1.a);



}
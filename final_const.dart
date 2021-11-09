void main(){

  //in final datatypes are value are assigned only when they are use ,memory allocation will be done when they are accessed
  //in constant values are assigned at run time

  final int a;
  a=44;

  print (a);
  const int b=66;

  print(b);
 final city="mumbai";
 print(city);
 const gravity=9.81;
 print(gravity);
mycircle c1=new mycircle();
print(c1.colour);
print(mycircle.radius);
}

class mycircle{
  final colour="red";
 static const radius=5;



}

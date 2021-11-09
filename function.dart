import 'dart:math';


void main()
{
  List l1=[];
  if (l1.isEmpty){
    print("the list is empty");}
    else
      {
        print (l1);
      }


    Point p1=new Point(0,0);
    Point p2=new Point (10,5);
    print(p1.x);
    print (p1.y);
    print (p2.x);
    print(p2.y);
    Point p3=new Point("my","name");
    print(p3.x);
    print(p3.y);

Point2 p4=new Point2(12,15);
p4.dispaly();


}

class Point {
  var x, y;

  Point(var a, var b) {
    x = a;
    y = b;
  }
}


  class Point2
  {
  var x, y;
  Point2(this.x, this.y);
  void dispaly()
  {
    print(this.x);
    print(this.y);
  }


}
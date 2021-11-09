
//
class vehicle
{
  var color="white";
  vehicle()
  {

    print(" default constructor from vehicle is called");

  }
vehicle.myvehicleconstructor(var color)
{
  print("from myvehicle constructor");
  this.color=color;

}


}


class truck extends vehicle
{
  var color_backside="brown";

truck.mynameconstructor(var color_backside,var color):super.myvehicleconstructor(color)
{
  print("from myname constructor");
  this.color_backside=color_backside;
}

}
void main()
{
  var t1=truck.mynameconstructor("black","blue");
  //  This will invoke the parameterised constructor first from super class and
  //then fromchild class
   print(t1.color_backside);
  print(t1.color);






}
class vehicle
{
  var color="white";
    vehicle(int b)
    {
      print(" default constructor from vehicle is called");

    }


}


class truck extends vehicle
{
  var Color_truck="brown";
  truck(var i):super(20)
  {
    print("default constructor from  truck is called");
  }


}
void main()
{
  var t1=truck(20);
//above line calls super class constructor first and then child class





}
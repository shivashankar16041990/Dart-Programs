void main()
{
  //you can not call default constructor if u have parameterised constructor in class
  //var c1= car();
  var c1= car("toyota",4,44,"white");
  print(c1.diesel_tank_capacity);

  //calling parameterised constructor
var c2=car.mycustomconstructor();
print(c2.name);

  //calling parameterised constructor 2

  var c3=car.mycustomconstructor2("maruti");
  print(c3.name);
}

class car{
  String name="anycar";
  var no_of_seats;
  int diesel_tank_capacity=0;
  var color;

//parameterised constructor
  car(String _name,var _no_of_seats,int _diesel_tank_capacity,var color)
  {
    name=_name;
    no_of_seats=_no_of_seats;
    diesel_tank_capacity=_diesel_tank_capacity;
    this.color=color;

  }


  //named constructor
    car.mycustomconstructor()
    {

      print("from my custom constructor");



    }


  car.mycustomconstructor2(this.name)
  {

    print("from my custom constructor 2");



  }




}
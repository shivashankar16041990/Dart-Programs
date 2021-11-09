class vehicle
{
  var color="white";
  vehicle(var color)
  {
    this.color=color;
    print(" default constructor from vehicle is called");
    print("color from Vehicle class ${this.color}");
  }


}


class truck extends vehicle
{
  var Color_backside="brown";
  truck(var color_backside,var color):super(color)
  {
    this.Color_backside=color_backside;

    print("default constructor from  truck is called");
    print("color from truck ${this.color}");
    print("color from truck ${this.Color_backside}");
  }


}
void main()
{
  var t1=truck("black","blue");
//above line calls super class constructor first and then child class





}
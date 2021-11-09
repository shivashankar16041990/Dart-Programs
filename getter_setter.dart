void main()
{
 var s1=student();
 s1.name="vicky";  //uses default get and set method
 s1.marks=90.11; //uses default get and set method
 s1.percentage=200.00;//uses set method, 200.00 will be assigned to markso in set method
 print(s1.percentage);  //uses get method

}
class student
{
  var name ;
  var marks;
 var percent;
  void set percentage(double markso){
    print(markso);
    percent=(markso/400)*100;

  }
  double get percentage
  {
    return percent;
  }
}
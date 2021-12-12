void main(){

  var myclass1=myclass();
  print(myclass1.name);
  print(myclass1.id);

  myclass1.id=3;
  print(myclass1.id);

  var myclass2=myclass();
  print(myclass2.name);
  print(myclass2.id);
}



class myclass{
  static  late  myclass _myclass;
  static bool notcreated=true;
  int id=0;

  String name='shiv';
  myclass._createinstance();
  factory myclass(){
    print("factory method is called");
    if(notcreated){
      _myclass=myclass._createinstance();
      notcreated=false;

    }
    return _myclass;

//  return myclass._createinstance();
  }


}
void main()
{
  //set in {}
  var set={1,2,3,4,5};
  print ("set :");
  print(set.runtimeType);

  //list in []

  var list=[1,2,3,4];
  print ("list :");
  print(list.runtimeType);


  //map in {key:value}


  var map={1:"first",2:"second",3:"third",4:"fourth"};
  print ("map :");
  print(map.runtimeType);


  //forEach methods runs for all of them

  set.forEach((element) {print ("set");print(element);});

  list.forEach((element) { print ("list");print(element);});

  map.forEach((key, value) {print ("map");print('$key ,$value');});




}
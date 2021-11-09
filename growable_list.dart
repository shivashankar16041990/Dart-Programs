void main()
{
  List <String> mylist=List.empty(growable: true);

mylist.add("mumbai");
  mylist.add("pune");
  mylist.add("delhi");
  print(mylist);
  print(mylist[1]);
  print(mylist[2]);

  print ("printing using in operator");
  for (String element in mylist)
    print(element);
  print ("printing using forEach()");
  mylist.forEach((element) { print(element);});

  print ("printing using index values");
  for (int i=0;i<mylist.length;i++)
  {
    print(mylist[i]);
  }

}
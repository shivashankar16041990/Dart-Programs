void main()
{
  for (int i=0;i<10;i++)  {
    if (i%2==0)
      continue;
    print(i);

  }


 outerloop: for (var i=0;i<10;i++)
    for (var j=0;j<10;j++)
    {
      if (i==0 && j==0)
      continue;
      if (i%2==0 && j%2==0)
      {continue outerloop;}
      print("$i   $j");
    }


  var i;
    print(i??"not intialize");
}
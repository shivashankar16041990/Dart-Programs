void main()
{
  outerloop: for (int i=0;i<10;i++)
    for (int j=0;j<10;j++) {
      print("$i   $j");
      if (i == 5 && j == 5)
        break outerloop;
    }


}
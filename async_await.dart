void main() async
{
  print("stared the execution");
    callfun();
  print("normal execution");
}

void callfun()async {
  var exe=  processdata(1000,2000);
  await for (var value in exe)
  {print(value);}
}


Stream <int> processdata(var num1,var num2) async*
{

  var m=1;
for(int x=0; x<10 ;x++) {
  for (int i = 0; i < num1; i++)
    for (int j = 0; j < num1 * num2; j++) {
      m++;

    }

  yield m;
}
}


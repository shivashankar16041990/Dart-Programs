void main()
{
    Future<int> exe=processdata(1000,2000);

    //then () will contains the after execution part
  exe.then((value_m)=>print(value_m));
  exe.catchError((e)=>print(e));
    print("normal execution");
}



//Future <T> ,here int is return type ,
// Future represent that result will be avaibable in future
Future <int> processdata(var num1,var num2)
{
    var m=1;

  for (int i=0;i<num1;i++)
    for (int j=0;j<num1*num2;j++)
      {
        m++;
      }
//here u have to specify which value will be returedin the future
return Future <int>.value(m);
}

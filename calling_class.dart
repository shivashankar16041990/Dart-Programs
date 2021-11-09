class myclass
{
  //this call method will be invoked by object obj (100,200) in main method
  //the object of a class can call that method like a function hence it is called as callable class
  int call (int a,int b)=> a+b;

}

void main()
{
  var obj=myclass();
  print(obj(100,200));
}
void main()async{
  await for(int n in intstream())
  {
    print(n);
  }  
  
}



Stream <int> intstream()async*{
  for (int i=1;i<100;i++){
    
    await Future.delayed(Duration(seconds:4));
    print("divisor of $i is");
    yield*  divisor(i);
    
  }
  
  
}


Stream <int> divisor(int m) async*{
  
  for(int i=1;i<m;i++){
    if(m%i==0){
      yield i;
    }
  }
  
}

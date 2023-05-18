void main() {
  
  var  l= ("name", a:1,b:2,"lastname");
  print ("values of l");
  print(l.runtimeType);
  print (l);
  
  
    
  
  ({int a,int b}) m;
  m=(b:123,a:33);
   print ("values of m");
   print(m.runtimeType);
  print (m);
 
  
  
  (int ,String) n;
  n=(10,"mumbai");
   print ("values of n");
   print(n.runtimeType);
  print (n);
  
  print("with curly braces");
  ({int a,int b}) recordAB=(a:3,b:4);
  ({int x,int y})  recordXY=(x:3,y:4);
  
  print("recordAB ");
  print ("values of recordAB");
   print(recordAB.runtimeType);
  print(recordAB);
  
  print("recordXY ");
  print ("values of recordXY");
   print(recordXY.runtimeType);
  print(recordXY);
  
  
  if(recordAB==recordXY){
    
    print("recordAB and recordXY are same");
    
  }
  else 
    print("recordAB and recordXY are same not same");
  
  
 print("without curlybraces");
  
  
  
  
  (int a,int b) recordABwithout=(3,4);
  (int x,int y)  recordXYwithout=(3,4);
  
  print("recordAB without");
  print ("values of recordAB without");
   print(recordABwithout.runtimeType);
  print(recordABwithout);
  
  print("recordXYwithout ");
  print ("values of recordXYwithout");
   print(recordXYwithout.runtimeType);
  print(recordXYwithout);
  
  
  if(recordABwithout==recordXYwithout){
    
    print("recordABwithout and recordXYwithout are same");
    
  }
  else 
    print("recordABwithout and recordXYwithout are same not same");
  
  
  print("accesing the values of each recpord variable");
  print("for variable l");
   // var  l= ("name", a:1,b:2,"lastname");
  print(l.$1);
    print(l.$2);
  print(l.a);
    print(l.b);
    
    print("for variable n");
   // (int ,String) n;  n=(10,"mumbai");
 
  print(n.$1);
    print(n.$2);
 
    print("calling a fun");
    print(result((a:20,b:5)));
  print("calling a function");
  var res=result((a:20,b:5));

                 print(res.$1);
                 print(res.$2);
    
  
  
}



(int ,int) result(({int a,int b}) length){
 
  int mul=length.a *length.b;
  int div=(length.a / length.b).toInt();
  
  
  
  
  return (mul,div);
  
  
  
}  

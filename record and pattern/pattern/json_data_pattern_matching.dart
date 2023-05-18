void main(){
  //example 1
  var json={'user':["sachin",10]};
  
  

  var {'user':[name,age]}=json;
  
  print(name);
  print(age);
  
  
  //example 2
  
   var json2={'user':["sachin",10,3000,"mumbai"]};
 
  var {'user':[name2,_,salary,_]}=json2;
  
  print(name2);
 print(salary);
  
  
  
  
  
  
}
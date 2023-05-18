void main(){

  
//   //simple match
//   int number=1;
  
// switch(number)
// {
//   case 1 :
//     print("this is one");
// }

  
  
  
  
  
//       //destructuring a variable using pattern matching
  
//   var numlist=[1,2,3];
//   var [a,b,c]=numlist;
  
//   print(a);
//   print(b);
//   print(c);
  
  
//   //destructuring a variable using pattern matching in swith statement
//   var numlist2=[10,20];
  
//   switch(numlist2)
//   {
//     case [var a,var c]:
//       print(c);
//       print(a);
      
//   }
  
//      //Declares new variables a, b, and c with pattern matching Example no1
//   var (a,b,c)=(10,20,30);
  
//   print(a);
//   print(b);
//   print(c);
  
  
  //A pattern variable declaration must start with either var or final
  //example no 02
//   String s1="my";
  
//   var (a,b,c)=(s1,20,30);
  
//   print(a);
//   print(b);
  
  
  //swapping the values using pattern matching
  
//   int left =10;
//   int right=20;
  
//   var (a,b)=(left,right);
//   print(a);
//   print(b);
  
  
//   (b,a)=(a,b);
//   print(a);
//   print(b);
  
  
  //pattern matching using switch statement
  
  
//   (int ,int) obj=(10,30); //put here different values 1,10,(10,30)
  
  
  
//   switch (obj){
      
//     case 1:
//       print("obj has value 1");
// //     case >=1 && <=15
// //       :
// //       print("in range");
//     case (int a,int b): //if obj is a record
//       print("$a  $b");
      
  
  
  
//   //multiple cases in same pattern matching body
  
  
//   int obj=80;
  
//   var isgreaterThan50= switch(obj){
      
//       >=50=>true,
//       <50 =>false,
//       _=>false
//   };
  
//   print(isgreaterThan50);

  
  //pattern matching in for and for in loop
  
  
  Map<String,int> map={ 'a':100,
                     
                     "b":200,
                     "c":300,"d": 400,"e":5000,
                     };
  
  

  
  
  for (var MapEntry(key:key,value:count) in map.entries){   //var MapEntry(key:key,value:count) is a pattern
    
    print("$key, $count");
  }
  
  
  
}











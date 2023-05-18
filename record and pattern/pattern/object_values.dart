class Employee{
  
  String name;
  int age;
  double salary;
  
  
  Employee({required this.name,required this.age,required this.salary});
  
  
}



void main(){
  final Employee employee=Employee(name:"sachin",age:30,salary:30000);
  
  var Employee(name:name,age:age)=employee;
  
  print(name);
  print(age);
  
  
  
}
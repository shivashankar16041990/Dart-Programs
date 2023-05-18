sealed class Shape{}

class Circle implements Shape{
  
  final double radius;
  Circle (this.radius);
  
  
}

class Square implements Shape{
  final double length;
  Square(this.length);
  
}


double calculateArea(Shape shape){
  return switch(shape){
  
      Circle(radius: var radius)=> 3.14*radius*radius,
      
      Square (length:var length)=>length*length
      
  };
  
  
}




void main(){
  
  Circle c1=Circle(50);
  Square s1=Square(30);
  
  
  
  print(calculateArea(c1));
  
  print(calculateArea(s1));
  
  
  
}


// enum are constant values must be defined outside of main function
enum color {white,red,blue,green}
void main()
{
  print(color.blue);
  print(color.red.toString());
  print(color.red.index);
  print(color.values);
  print(color);
  print(color.values.runtimeType);
 List duplicate=color.values;

  for (var s in color.values)
    {
      print(s);
    }

  for (var s in duplicate)
    {
      print(s.runtimeType);
      print(s);
    }



}
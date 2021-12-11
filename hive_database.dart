

import 'package:hive/hive.dart';


void main() async {
  Hive.init("C:\Users\admin\Desktop\hive\my");

  await Hive.openBox("mybox");
  final box = Hive.box("mybox");

  //storing a string
  box.put("name", "shiv");
  String name = box.get("name");
  print(name);

  //storing a int
  box.put("id", 13);
  int id = box.get("id");
  print(id);

  //strong a List

  List<int> mylist=[1,2,3,4,5];
  box.put("mylist", mylist);
  var mysatoredlist=box.get("mylist");
  print(mysatoredlist);

  //printing the keys
  box.keys.forEach((element) {
    print(element);
  });

//close box otherwise it will give exception when reun second time
  await box.close();
}

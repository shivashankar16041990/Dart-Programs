import 'package:intl/intl.dart';
import 'package:characters/characters.dart';
void main(){
  var current_date=DateTime.now();
  print("DateTime  $current_date");
  print(" day ${   current_date.day }");
  print(" month ${   current_date.month }");
  print(" year  ${   current_date.year }");
  print(" hour  ${   current_date.hour }");
  print(" minute  ${   current_date.minute }");
  print("second  ${   current_date.second }");
  print(" milisecond  ${   current_date.millisecond }");
  print(" microsecond  ${   current_date.microsecond }");
  print(" microsecondsSinceEpoch  ${   current_date.microsecondsSinceEpoch }");
  print(" millisecondsSinceEpoch ${   current_date.millisecondsSinceEpoch }");
  print(" isUtc  ${   current_date.isUtc }");


var one_year_back_date=DateTime(2020,10,1,23,01,16,900,252);
print(one_year_back_date);
  print("DateTime  $current_date");
  print("    ${one_year_back_date.add(Duration(days: 365))}");
         Duration diff=current_date.difference(one_year_back_date);
              print("Days  ${diff.inMilliseconds}");

              print("to local ${current_date.toLocal()}");
                print("to utc ${current_date.toUtc()}");

  var df= DateFormat.yMd().add_jm();
  String s1=df.format(current_date);
  print("formated datetime  $s1");
print("\u{1f606}");







}

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main ()async
{
  var today=DateTime.now();
  final d1=DateFormat("yyyy-mm-dd kk:mm:ss").format(today);
  print(d1);
  final d2=DateFormat('EEE , m/d/yyyy').format(today);
  print(d2);
  await initializeDateFormatting();
  final d3=DateFormat('EEEEEEE , m/d/yyyy',"hi").format(today);
  print(d3);

}
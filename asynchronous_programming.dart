import 'dart:math';
import 'dart:io';
//Stream are used for asynchonous programming
Stream <int> randomno() async* {

  final stream =Random();
  for (var i=0;i<100;i++)
  {
    await Future.delayed(Duration(seconds: 4));
    yield stream.nextInt((60));
  }


}


void main()
async{
  var randomvariable=randomno();
  await for (var value in randomvariable)
  {
    print(value);
  }
}
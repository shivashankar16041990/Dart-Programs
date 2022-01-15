import 'dart:async';

void main() async{
  Completer completer=Completer<String>();

  completer.future.then((value) => print("from then $value"));



    print(completer.isCompleted);
   print(completer.future);await Future.delayed(Duration(seconds:10));
  completer.complete("my");









}

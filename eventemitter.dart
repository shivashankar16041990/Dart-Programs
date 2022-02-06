

import 'package:eventify/eventify.dart';


void main(){
var myevent =MyEvent();
myevent.emitter.on("addition", null, (ev, context) {
  print(".on addition");

  print("event Name : ${ev.eventName}, event data : ${ev.eventData}");});


myevent.emitter.on("substraction", null, (ev, context) {
  print(".on substraction");

  print("event Name : ${ev.eventName}, event data : ${ev.eventData}");});


myevent.addition(20, 30);
myevent.substraction(40, 80);
print("main Finished");


}

class MyEvent{
  EventEmitter emitter= EventEmitter();

  Future<void> addition(int a ,int b)async{
    await Future.delayed(Duration(seconds: 10));


    print("EMMITING ADDITION");
    emitter.emit("addition",null,(a+b).toString());
  }

Future<void> substraction(int a, int b)async{

await Future.delayed(Duration(seconds: 15));
  print("EMMITING SUBSTRACTION");
  emitter.emit("substraction",null,(a-b).toString());

}



}


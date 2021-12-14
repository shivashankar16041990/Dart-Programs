import 'dart:async';

 class mystream{
  StreamController<int> _controller=StreamController.broadcast();
  Stream<int> get outvalue=>_controller.stream;
  StreamSink<int> get invalue=>_controller.sink;






}

void main() {
var obj=mystream();
var obj2=mystream();
obj.outvalue.listen((event) {print("value listened is ${event*event}");});
obj2.outvalue.listen((event) {print("value listened is ${event*event}");});
sendstream(obj,10);
sendstream(obj2,100);
print("finish of main");
}

void sendstream(mystream obj,int start)async{
  for (int i=start;i<start+5;i++){
    print("adding a value $i to stream after 3 seconds");

    obj.invalue.add(i);

    await Future.delayed(Duration(seconds: 3));
  }
}

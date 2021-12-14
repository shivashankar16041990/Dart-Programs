import 'dart:async';

class mystream{
  static StreamController<int> _controller=StreamController.broadcast();
  static Stream<int> get outvalue=>_controller.stream;
  static StreamSink<int> get invalue=>_controller.sink;
}

void main() {
  print("start of main");
  mystream.outvalue.listen((event) {print("value listened is $event");});
  mystream.outvalue.listen((event) {print("value listened its square is ${event*event}");});
  sendstream(10);
 // sendstream(20);  //values are send 10,20,11,21,12,22
  print("finish of main");
}

  void sendstream(int start) async {
    for (int i = start; i < start + 5; i++) {
      await Future.delayed(Duration(seconds: 3));
      print("adding a value $i to stream after 3 seconds wait");
      mystream.invalue.add(i);
    }
  }



class myclass {



  void sendstream(int start) async {
    for (int i = start; i < start + 5; i++) {
      await Future.delayed(Duration(seconds: 3));
      print("adding a value $i to stream after 3 seconds wait");
      mystream.invalue.add(i);
    }
  }
}

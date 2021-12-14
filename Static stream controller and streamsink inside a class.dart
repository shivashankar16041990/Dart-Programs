import 'dart:async';

class mystream {
  static StreamController<dynamic> _controller = StreamController.broadcast();
  static Stream get outvalue => _controller.stream;
  static StreamSink get invalue => _controller.sink;
}

void main() {
  print("start of main");
  mystream.outvalue.listen((event) {
    print("value listened from main function ${event}");
  });

  print("finish of main");
  myclass().sendstream(10);
}

class myclass {
       myclass() {
       mystream.outvalue.listen((event) {
       print("value listened from myclass $event");
    });
  }

  void sendstream(int start) async {
    for (int i = start; i < start + 5; i++) {
      await Future.delayed(Duration(seconds: 3));
      print("adding a value $i to stream after 3 seconds wait");
      mystream.invalue.add(i);
    }
    mystream.invalue.add("finish at ${DateTime.now().toString()}");
  }
}

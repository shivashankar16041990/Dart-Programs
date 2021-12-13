import 'dart:async';

void main()async{
  StreamController<int> controller=StreamController(
      onCancel: (){print("stream is cancelled");},
      onListen:    (){print("stream is listening");},
      onPause:  (){print("stream is pause");},
      onResume:  (){print("stream is Resume");},
   // sync: true
  );
 controller.addStream(intStream(55));


  StreamSubscription<int> subscription=controller.stream.listen((event) {print("listen: $event");});
 // StreamSubscription<int> subscription2=controller.stream.listen((event) {print("listen2: $event");});
 // subscription.onData((data) {if(data==58){print("found the data");}});  //works

  print("waiting for 10 second");
  await Future.delayed(Duration(seconds: 5));
 // controller.add(33);  //add 33 when fun startStream does not emits the value
 // controller.add(55); //add 55 when fun startStream does not emits the value
  print("waiting finish for 5 second");

  subscription.pause();
  await Future.delayed(Duration(seconds: 5));
  print("waiting finish for next 5 second");
  subscription.resume();
 // startStream(10);



}


void startStream(int value)async{
  print("waiting for 6 second");
 await Future.delayed(Duration(seconds: 6));
  print("calling intSttream");
  await for (int stream in intStream(value)){

    print(stream);
  }



}


Stream<int> intStream(int value)async*{
  for (int i=value;i<=value+10;i++){
    yield i;
    print("yielding value $i");
    await Future.delayed(Duration(seconds: 2));

  }




}
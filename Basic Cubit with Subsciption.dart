import 'package:bloc/bloc.dart';

Future <void>  main()async
{
    var counter =CubitCounter(10);
    var counter2 =CubitCounter(100);
    var subscription=counter.stream.listen(print);
    counter.increment();
    counter.increment();
    //await Future.delayed(Duration(seconds: 5));
   // await subscription.cancel();
   // await counter.close();


    var subscription2=counter2.stream.listen(print_event);//print_event function is called when ever there is any update
    counter2.increment();
    counter2.increment();
    //await Future.delayed(Duration(seconds: 5));
    //await subscription2.cancel();
    //await counter2.close();


}

void print_event(int event)
{
  print("The Stream update is $event");
}



class CubitCounter extends Cubit<int> {
  CubitCounter(int initialvalue) :super(initialvalue);

  void increment()async {
    await Future.delayed(Duration(seconds: 4));
    emit(state + 1);
  }

  void decrement()async{
    await Future.delayed(Duration(seconds: 4));
    emit(state-1);
  }
  void onChange(Change<int> change) //overriding function executed when there is a change
  {
    print(change);
    super.onChange(change);
  }



}
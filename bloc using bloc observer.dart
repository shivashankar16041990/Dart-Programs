import 'package:bloc/bloc.dart';



void main()async {

  Bloc.observer=Counter_Bloc_Observer();         //BlocObserver requires only object of Observer class
  final counter =CounterClass(10);              //counter is a object of bloc class
  final sub=counter.stream.listen(printstream);      //printstream function automatically gets called when state changes
  //final sub=counter.stream.listen(print);    //print function automatically gets called when state changes
  print("initial state : ${counter.state}");
  counter.add(Increment());
  await Future.delayed(Duration(seconds: 2));
  print("Counter is increament by 1 is ${counter.state}");

}
void printstream(value)
{
  print(value);
  print(value.runtimeType);
}



abstract class Counter {}
class Increment extends Counter{}
class Decrement extends Counter{}

class CounterClass extends Bloc<Counter,int>{

  CounterClass(int initialstate):super(initialstate){
    on<Increment>((_,__){emit(state+1);});}

  }

class Counter_Bloc_Observer extends BlocObserver{

  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('the change is $change');


    void onTransition(Bloc bloc, Transition transition) {
      super.onTransition(bloc, transition);

      print('the transition is $transition');
    }
    }

}
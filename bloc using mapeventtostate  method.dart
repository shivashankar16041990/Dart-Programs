import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
void maina()async
{
  final counter=Counter_Bloc(10);
  print("initial state is ${counter.state}");
  counter.add(Increment());
  print("state increamented by 1 is ${counter.state}");

  counter.add(Increment());
  print("state increamented by 1 is ${counter.state}");

  counter.add(Decrement());
  print("state decreamented by 1 is ${counter.state}");





}

abstract class CounterEvents with EquatableMixin
{

  List<Object> get props=> [];

}
class Increment extends CounterEvents{

}

class Decrement extends CounterEvents{

}

class Counter_Bloc extends Bloc<CounterEvents,int>
{
  Counter_Bloc(int initialState) : super(initialState);
  Stream<int> mapEventToState(CounterEvents event) async* {
    if (event is Increment)
    {
      yield state+1;

    }
    if (event is Decrement)
    {
      yield state-1;

    }

  }

}

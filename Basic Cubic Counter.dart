import 'package:bloc/bloc.dart';

void main()
{
//basic usage
var counter=CounterCubit(10);
var counter2=CounterCubit(100);


print("initial state : ${counter.state}");
counter.increament();
print("increamented by 1 : ${counter.state}");
counter.increament();
print("increamented by 1 : ${counter.state}");
counter.decreament();
print("decreament by 1 : ${counter.state}");
counter.decreament();
print("decreament by 1 : ${counter.state}");

// for counter2
  print("initial state : ${counter2.state}");
  counter2.increament();
  print("counter2 increamented by 1 : ${counter2.state}");
  counter2.increament();
  print("counter2 increamented by 1 : ${counter2.state}");
  counter2.decreament();
  print("counter2 decreament by 1 : ${counter2.state}");
  counter2.decreament();
  print("counter2 decreament by 1 : ${counter2.state}");

}


class CounterCubit extends Cubit<int>{      //<int> this value will be supplied by
  CounterCubit(int initialstate):super(initialstate);

  void increament()=>emit(state+1);
  void decreament()=> emit(state-1);

}
import 'package:bloc/bloc.dart';

import 'Basic Cubit with Subsciption.dart';

void main() {
  Bloc.observer = counterObserver();// this automatically observe and print changes
  final counter = CubitCounter(0);
  print("initial state : ${counter.state}");
  counter.increment();
  print("counter increamented by 1 : ${counter.state}");
  counter.increment();
  //counter.close();
}

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increament() => emit(state + 1);

  void decrement() => emit(state - 1);
}

class counterObserver extends BlocObserver {
  void onChange(BlocBase bloc, Change change) //overriding onchange method
  {
    super.onChange(bloc, change);
    print("${bloc.runtimeType}");
   print("$change");
  }

}

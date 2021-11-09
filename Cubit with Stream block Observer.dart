import 'package:bloc/bloc.dart';


Future <void> main() async{
  Bloc.observer = counterObserver();// this automatically observe and print changes

  final counter = CounterCubit(12);
  final subscription=counter.stream.listen(print);
  print("initial state : ${counter.state}");

  counter.increament();
  //await Future.delayed(Duration.zero);
  print("counter increamented by 1 : ${counter.state}");
  counter.increament();
  counter.close();

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
    print("bloc run type ${bloc.runtimeType}");
    print("change $change");

  }

  void onClose(BlocBase bloc) {
    print("Closing object of ${bloc.runtimeType}");
    super.onClose(bloc);
  }
}

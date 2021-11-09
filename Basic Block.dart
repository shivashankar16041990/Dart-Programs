import 'package:bloc/bloc.dart';

Future<void> main() async
{
final counter=CounterBloc(10);
print(counter.state);
counter.add(Increment());
await Future.delayed(Duration(seconds: 3));
print(counter.state);

}
abstract class Counter
{

}

class Increment extends Counter{ }
class Decrement extends Counter{}


class CounterBloc extends Bloc<Counter,int>
{
  CounterBloc(int initialState) : super(initialState){
    on <Increment>( (event,emit){
      print("event ${event.runtimeType}");
      print("emit ${emit}");

      emit(state+1);});
   // on<Decrement> (event,emit){emit (state+1);};

  }
}

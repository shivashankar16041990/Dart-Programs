import 'example_bloc.dart';


void main() async {
  ExampleBloc example_bloc = ExampleBloc();
  example_bloc.stream.listen((event) {
    print(event.runtimeType);
    print(event.result);
  });
  example_bloc.add(Addition(a: 20, b: 10));
  example_bloc.add(Substraction(a: 20, b: 10));
}

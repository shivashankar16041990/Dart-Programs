part of 'example_bloc.dart';

// ignore: must_be_immutable
abstract class ExampleEvent extends Equatable {
  int a, b;

  ExampleEvent({required this.a, required this.b});

  @override
  List<Object> get props => [a, b];
}

class Addition extends ExampleEvent {
  Addition({required int a, required int b}) : super(a: a, b: b);
}

class Substraction extends ExampleEvent {
  Substraction({required int a, required int b}) : super(a: a, b: b);
}

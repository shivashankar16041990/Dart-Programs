part of 'example_bloc.dart';

abstract class ExampleState extends Equatable {
  int result;

  ExampleState({required this.result});
}

class ResultAddition extends ExampleState {
  ResultAddition({required int addresult}) : super(result: addresult);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ResultSubstraction extends ExampleState {
  ResultSubstraction({required int subresult}) : super(result: subresult);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ExampleStateInitial extends ExampleState {
  ExampleStateInitial() : super(result: 0);

  @override
  List<Object> get props => [];
}

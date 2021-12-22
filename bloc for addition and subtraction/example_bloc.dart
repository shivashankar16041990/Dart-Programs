import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {

      on<Addition>(_addition);
      on<Substraction>(_substraction);

  }

  FutureOr<void> _addition(Addition event, Emitter<ExampleState> emit) {
    emit(ResultAddition(addresult: event.a+event.b));

  }

  FutureOr<void> _substraction(Substraction event, Emitter<ExampleState> emit) {
    emit(ResultSubstraction( subresult:  event.a-event.b,));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<AddCounterEvent>(_addCounter);
    on<SubtractCounterEvent>(_subtractCounter);
  }

  void _addCounter(AddCounterEvent event, Emitter<int> emit) async {
    emit(state + 1);
  }

  void _subtractCounter(SubtractCounterEvent event, Emitter<int> emit) async {
    emit(state - 1);
  }
}

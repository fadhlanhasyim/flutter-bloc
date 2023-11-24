part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class AddCounterEvent extends CounterEvent {
  const AddCounterEvent();

  @override
  List<Object> get props => [];
}

class SubtractCounterEvent extends CounterEvent {
  const SubtractCounterEvent();

  @override
  List<Object> get props => [];
}
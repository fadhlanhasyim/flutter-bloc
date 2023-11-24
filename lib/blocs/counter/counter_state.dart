part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}

class CounterLoadingState extends CounterState {}

class CounterLoadedState extends CounterState {
  final int counter;

  const CounterLoadedState(this.counter);
}

class CounterErrorState extends CounterState {
  final Error? error;
  const CounterErrorState(this.error);
}
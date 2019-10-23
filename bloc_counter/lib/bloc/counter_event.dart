import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementCounterEvent extends CounterEvent {
  final int step;
  const IncrementCounterEvent(this.step);

  @override
  List<Object> get props => [];
}
class DecrementCounterEvent extends CounterEvent {
  final int step;
  const DecrementCounterEvent(this.step);

  @override
  List<Object> get props => [];
}
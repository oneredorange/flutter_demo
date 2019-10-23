import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CounterState extends Equatable {
  final int count;
  const CounterState({@required this.count});
}

class InitialCounterState extends CounterState {
  InitialCounterState({@required count}): super(count:count);
  @override
  List<Object> get props => [];
}

class IncrementCounterState extends CounterState {
  IncrementCounterState({@required count}): super(count:count);

  @override
  List<Object> get props => [count];

}

class DecrementCounterState extends CounterState {
  DecrementCounterState({@required count}): super(count:count);

  @override
  List<Object> get props => [count];

}
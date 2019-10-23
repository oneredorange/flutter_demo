import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => InitialCounterState(count: 0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementCounterEvent)
      yield IncrementCounterState(count: state.count + event.step);
    else if (event is DecrementCounterEvent)
      yield DecrementCounterState(count: state.count + event.step);
  }
}

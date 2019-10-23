import 'bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int step = 1;
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: BlocBuilder(
              bloc: BlocProvider.of<CounterBloc>(context),
              builder: (context, state) {
                int count = 0;
                if ( 
                  state is InitialCounterState || 
                  state is IncrementCounterState ||
                  state is DecrementCounterState 
                  )
                    count = state.count;
                return Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              hoverColor: Colors.amber,
              onPressed: (){
                BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent(step));
              },
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
            ),
            RaisedButton(
              hoverColor: Colors.amber,
              onPressed: (){
                BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent(-step));
              },
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
            )
          ],
        )
      ],
    ));
  }
}

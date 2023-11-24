import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nusatek/blocs/counter/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key, required this.counterBloc});
  final CounterBloc counterBloc;

  void onAdd() => counterBloc.add(const AddCounterEvent());
  void onSubtract() => counterBloc.add(const SubtractCounterEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: onSubtract, icon: const Icon(Icons.remove)),
                    IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nusatek/blocs/counter/counter_bloc.dart';
import 'package:nusatek/pages/counter_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => counterBloc,
        child: CounterPage(
          counterBloc: counterBloc,
        ),
      ),
    );
  }
}

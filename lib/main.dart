import 'package:flutter/material.dart';

import 'package:provider_example/app.dart';
import 'package:provider_example/src/inherited_example/inherited/counter_inherited.dart';
import 'package:provider_example/src/inherited_example/screens/home_inherited_screen.dart';

void main() {
  runApp(const StateApp());
}

class StateApp extends StatefulWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CounterInherited(
      value: counter,
      onChanged: (value) => setState(() => counter = value),
      child: const MyApp(home: HomeInheritedScreen()),
    );
  }
}

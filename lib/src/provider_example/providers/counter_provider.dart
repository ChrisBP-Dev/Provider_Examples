import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;

    notifyListeners();
  }

  void increment() => counter = _counter + 1;

  void decrement() => counter = _counter - 1;
}

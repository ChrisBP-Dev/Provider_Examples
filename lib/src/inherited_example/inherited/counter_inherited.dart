import 'package:flutter/material.dart';

class CounterInherited extends InheritedWidget {
  const CounterInherited({Key? key, required this.value, required this.onChanged, required Widget child})
      : super(key: key, child: child);

  final int value;

  final ValueChanged<int> onChanged;

  static CounterInherited of(BuildContext context, {bool listen = true}) {
    return listen
        ? context.dependOnInheritedWidgetOfExactType<CounterInherited>()!
        : context.findAncestorWidgetOfExactType<CounterInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant CounterInherited oldWidget) => oldWidget.value != value;
}

extension FromInherited on BuildContext {
  CounterInherited readInherited() => CounterInherited.of(this, listen: false);
}

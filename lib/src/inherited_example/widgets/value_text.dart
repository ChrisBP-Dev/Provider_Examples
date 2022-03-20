import 'package:flutter/material.dart';
import 'package:provider_example/src/inherited_example/inherited/counter_inherited.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class ValueText extends StatelessWidget {
  const ValueText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = CounterInherited.of(context).value;

    return ValueCard(value: counter);
  }
}

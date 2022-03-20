import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_example/providers/counter_provider.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class ValueText extends StatelessWidget {
  const ValueText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = context.select<CounterProvider, int>((provider) => provider.counter);

    return ValueCard(value: counter);
  }
}

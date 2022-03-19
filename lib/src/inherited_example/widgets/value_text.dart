import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class ValueText extends StatelessWidget {
  const ValueText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const counter = 0;

    return const ValueCard(value: counter);
  }
}

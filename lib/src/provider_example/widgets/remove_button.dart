import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_example/providers/counter_provider.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== ProviderRemoveButton');
    return CustomButton(
      onTap: () => context.read<CounterProvider>().increment(),
      title: 'Remove',
      color: Colors.redAccent.withOpacity(0.4),
    );
  }
}

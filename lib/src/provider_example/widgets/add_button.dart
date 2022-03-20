import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_example/providers/counter_provider.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== ProviderAddButton');
    return CustomButton(
      onTap: () => context.read<CounterProvider>().increment(),
      title: 'Add',
      color: Colors.blueAccent.withOpacity(0.4),
    );
  }
}

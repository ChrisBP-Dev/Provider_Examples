import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_example/providers/counter_provider.dart';

import 'package:provider_example/src/provider_example/widgets/widgets.dart';

class SecondProviderScreen extends StatelessWidget {
  const SecondProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastData = context.read<CounterProvider>().counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Last value : $lastData',
            style: Theme.of(context).textTheme.headline5,
          ),
          const ValueText(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [RemoveButton(), AddButton()],
          ),
        ],
      ),
    );
  }
}

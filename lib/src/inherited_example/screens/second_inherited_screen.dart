import 'package:flutter/material.dart';

import 'package:provider_example/src/inherited_example/widgets/widgets.dart';

class SecondInheritedScreen extends StatelessWidget {
  const SecondInheritedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const lastData = 0;

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

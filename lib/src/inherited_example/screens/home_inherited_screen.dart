import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/widgets.dart';
import 'package:provider_example/src/inherited_example/widgets/widgets.dart';
import 'package:provider_example/src/inherited_example/screens/second_inherited_screen.dart';

class HomeInheritedScreen extends StatelessWidget {
  const HomeInheritedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Home'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ValueText(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [RemoveButton(), AddButton()],
          ),
          CustomButton(
            title: 'Go to Second Screen',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondInheritedScreen()),
            ),
          )
        ],
      ),
    );
  }
}

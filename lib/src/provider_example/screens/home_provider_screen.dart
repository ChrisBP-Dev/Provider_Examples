import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/widgets.dart';
import 'package:provider_example/src/provider_example/widgets/widgets.dart';
import 'package:provider_example/src/provider_example/screens/second_provider_screen.dart';

class HomeProviderScreen extends StatelessWidget {
  const HomeProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Home'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
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
            color: Colors.deepPurpleAccent.withOpacity(0.4),
            title: 'Go to Second Screen',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondProviderScreen()),
            ),
          )
        ],
      ),
    );
  }
}

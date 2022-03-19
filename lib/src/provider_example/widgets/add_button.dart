import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== ProviderAddButton');
    return CustomButton(
      onTap: () {},
      title: 'Add',
      color: Colors.blueAccent.withOpacity(0.4),
    );
  }
}

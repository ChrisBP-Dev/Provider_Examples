import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/custom_button.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== RemoveButton');
    return CustomButton(
      onTap: () {},
      title: 'Remove',
      color: Colors.redAccent.withOpacity(0.4),
    );
  }
}

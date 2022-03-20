import 'package:flutter/material.dart';
import 'package:provider_example/src/inherited_example/inherited/counter_inherited.dart';

import 'package:provider_example/src/widgets/custom_button.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== RemoveButton');
    return CustomButton(
      onTap: () {
        final counter = CounterInherited.of(context, listen: false).value;

        CounterInherited.of(context, listen: false).onChanged(counter - 1);
      },
      title: 'Remove',
      color: Colors.redAccent.withOpacity(0.4),
    );
  }
}

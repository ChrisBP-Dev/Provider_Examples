import 'package:flutter/material.dart';
import 'package:provider_example/src/inherited_example/inherited/counter_inherited.dart';

import 'package:provider_example/src/widgets/widgets.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=== AddButton');

    return CustomButton(
      onTap: () {
        final counter = context.readInherited().value;

        context.readInherited().onChanged(counter + 1);
      },
      title: 'Add',
      color: Colors.blueAccent.withOpacity(0.4),
    );
  }
}

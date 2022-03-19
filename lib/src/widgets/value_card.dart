import 'package:flutter/material.dart';

class ValueCard extends StatelessWidget {
  const ValueCard({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    print('=== ValueCard');
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: setColor(value).withOpacity(0.2),
          border: Border.all(width: 3, color: setColor(value))),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      child: Text(
        '$value',
        style: Theme.of(context).textTheme.headline3?.copyWith(color: setColor(value)),
      ),
    );
  }

  Color setColor(int value) {
    if (value == 0) return Colors.black;

    return (value > 0) ? Colors.blue : Colors.red;
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
    this.padding,
  }) : super(key: key);

  const CustomButton.paddingZero({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
    this.padding = const EdgeInsets.all(4.0),
  }) : super(key: key);

  final String title;

  final VoidCallback onTap;

  final Color? color;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    print('==CustomButton');
    return Padding(
      padding: padding ?? const EdgeInsets.fromLTRB(30, 25, 30, 30),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: onTap,
        splashColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: color ?? Colors.greenAccent.withOpacity(0.4),
              border: Border.all()),
          padding: padding ?? const EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Text(title, style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

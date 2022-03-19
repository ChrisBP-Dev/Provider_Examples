import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.home}) : super(key: key);

  final Widget home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      home: home,
    );
  }
}

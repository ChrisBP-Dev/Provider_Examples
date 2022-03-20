import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_example/app.dart';
import 'package:provider_example/src/provider_example/providers/counter_provider.dart';
import 'package:provider_example/src/provider_example/screens/home_provider_screen.dart';
import 'package:provider_example/src/provider_shop_example/providers/order_provider.dart';
// import 'package:provider_example/src/provider_shop_example/screens/home_shop_screen.dart';

void main() {
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
        ChangeNotifierProvider<OrderProvider>(create: (_) => OrderProvider()),
      ],
      child: const MyApp(
        home: HomeProviderScreen(),
        // home: HomeShopScreen(), // SHOP EXAMPLE
      ),
    );
  }
}

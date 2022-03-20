import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_shop_example/providers/order_provider.dart';

import 'package:provider_example/src/provider_shop_example/screens/cart_screen.dart';

class CustomFloating extends StatelessWidget {
  const CustomFloating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Stack(
          children: [
            const Align(child: Icon(Icons.shopping_cart_outlined)),
            Align(
              alignment: const Alignment(0.8, -0.8),
              child: Consumer<OrderProvider>(
                builder: (context, provider, _) => _CircleNotifier(value: provider.length),
              ),
            )
          ],
        ),
        onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CartScreen()),
            ));
  }
}

class _CircleNotifier extends StatelessWidget {
  const _CircleNotifier({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return value == 0
        ? const SizedBox.shrink()
        : Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            padding: const EdgeInsets.all(8),
            child: Text('$value'),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_shop_example/providers/order_provider.dart';
import 'package:provider_example/src/provider_shop_example/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Consumer<OrderProvider>(builder: (context, provider, _) {
        return ListView.builder(
            itemCount: provider.length,
            itemBuilder: (_, i) {
              return OrderCard(product: provider.order.products[i], index: i);
            });
      }),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () {},
          label: Selector<OrderProvider, double>(
              selector: (_, provider) => provider.order.total,
              builder: (context, total, __) {
                return Text('Pay total: \$/ $total');
              })),
    );
  }
}

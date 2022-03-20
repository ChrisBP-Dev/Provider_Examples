import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider_shop_example/providers/order_provider.dart';

import 'package:provider_example/src/widgets/widgets.dart';
import 'package:provider_example/src/provider_shop_example/models/product_model.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.product, required this.index}) : super(key: key);

  final ProductModel product;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blueGrey.withOpacity(0.2),
          border: Border.all(width: 3)),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            product.imageText,
            style: const TextStyle(fontSize: 35),
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                product.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                '${product.price}',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          const Spacer(),
          CustomButton.paddingZero(title: 'Remove', onTap: () => context.read<OrderProvider>().removeProduct(index))
        ],
      ),
    );
  }
}

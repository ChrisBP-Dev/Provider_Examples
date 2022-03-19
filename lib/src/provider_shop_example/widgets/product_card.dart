import 'package:flutter/material.dart';

import 'package:provider_example/src/widgets/widgets.dart';
import 'package:provider_example/src/provider_shop_example/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blueGrey.withOpacity(0.2),
          border: Border.all(width: 3)),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: FittedBox(
              child: Center(
                child: Text(
                  product.imageText,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
          Text(
            product.name,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            '\$/.  ${product.price}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          CustomButton.paddingZero(title: 'Add', onTap: () {})
        ],
      ),
    );
  }
}

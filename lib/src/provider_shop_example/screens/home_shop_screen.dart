import 'package:flutter/material.dart';

import 'package:provider_example/src/provider_shop_example/widgets/widgets.dart';
import 'package:provider_example/src/provider_shop_example/models/product_model.dart';
import 'package:provider_example/src/provider_shop_example/widgets/custom_floating.dart';

class HomeShopScreen extends StatelessWidget {
  const HomeShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Shop Home'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 8 / 10),
        itemCount: _names.length,
        itemBuilder: (_, i) =>
            ProductCard(product: ProductModel(name: _names[i], imageText: _images[i], price: 3 + i.toDouble())),
      ),
      floatingActionButton: const CustomFloating(),
    );
  }
}

const _names = [
  'Burger',
  'Broaster',
  'Coffee',
  'Soda',
];
const _images = ['🍔', '🍗', '☕', '🥤'];

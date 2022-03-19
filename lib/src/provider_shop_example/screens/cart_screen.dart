import 'package:flutter/material.dart';

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
      body: ListView.builder(
          itemCount: 0, // TODO change to Order.products.length
          itemBuilder: (_, i) => const SizedBox()), // TODO use OrderCard here
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrangeAccent, onPressed: () {}, label: const Text('Pay total: \$/ value')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider_example/src/provider_shop_example/models/order_model.dart';
import 'package:provider_example/src/provider_shop_example/models/product_model.dart';

class OrderProvider extends ChangeNotifier {
  OrderModel _order = OrderModel.empty2();

  OrderModel get order => _order;

  int get length => order.products.length;

  void addProduct(ProductModel value) {
    final products = _order.products.toList()..add(value);

    _order = _order.copyWith2(products: products);

    notifyListeners();
  }

  void removeProduct(int index) {
    final products = _order.products.toList()..removeAt(index);

    _order = _order.copyWith2(products: products);

    notifyListeners();
  }
}

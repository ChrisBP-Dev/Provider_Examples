import 'package:provider_example/src/provider_shop_example/models/product_model.dart';

class OrderModel {
  const OrderModel({required this.products});

  final List<ProductModel> products;

  factory OrderModel.empty() => const OrderModel(products: <ProductModel>[]);

  OrderModel copyWith({List<ProductModel>? products}) => OrderModel(products: products ?? this.products);

  /// USE UNMODIFIABLE LIST
  factory OrderModel.empty2() => OrderModel(products: List.unmodifiable(<ProductModel>[]));

  /// USE UNMODIFIABLE LIST
  OrderModel copyWith2({List<ProductModel>? products}) =>
      OrderModel(products: List.unmodifiable(products ?? this.products));

  double get total => products.fold<double>(0, (prev, product) => prev + product.price);
}

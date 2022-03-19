import 'package:provider_example/src/provider_shop_example/models/product_model.dart';

class OrderModel {
  const OrderModel({required this.products});

  final List<ProductModel> products;

  factory OrderModel.empty() => const OrderModel(products: <ProductModel>[]);

  OrderModel copyWith({List<ProductModel>? products}) => OrderModel(products: products ?? this.products);

  double get total => products.fold(0, (prev, newValue) => prev + newValue.price);
}

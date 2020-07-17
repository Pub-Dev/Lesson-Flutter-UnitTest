import 'package:flutter_unit_test/features/product-list/data/models/product_model.dart';

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(int id);
}
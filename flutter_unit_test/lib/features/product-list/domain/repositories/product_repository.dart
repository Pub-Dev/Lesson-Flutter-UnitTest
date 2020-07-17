import 'package:dartz/dartz.dart';
import 'package:flutter_unit_test/core/errors/failures.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
  Future<Either<Failure, Product>> getProduct(int id);
}
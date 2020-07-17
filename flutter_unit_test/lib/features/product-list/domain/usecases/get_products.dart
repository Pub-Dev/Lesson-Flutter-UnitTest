import 'package:flutter_unit_test/core/usecases/usecase.dart';
import 'package:flutter_unit_test/features/product-list/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_unit_test/core/errors/failures.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';

class GetProducts implements UseCase<List<Product>, NoParams> {
  final ProductRepository repository;

  GetProducts(this.repository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await this.repository.getProducts();
  }
}
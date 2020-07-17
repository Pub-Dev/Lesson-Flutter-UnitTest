import 'package:flutter_unit_test/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_unit_test/core/usecases/usecase.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';
import 'package:flutter_unit_test/features/product-list/domain/repositories/product_repository.dart';

class GetProduct implements UseCase<Product, Params> {
  final ProductRepository repository;

  GetProduct(this.repository);

  @override
  Future<Either<Failure, Product>> call(Params params) async {
    return await this.repository.getProduct(params.id);
  }
}

class Params{
  final int id;
  Params({this.id});
}
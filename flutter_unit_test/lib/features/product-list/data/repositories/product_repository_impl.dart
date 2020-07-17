import 'package:flutter_unit_test/core/platform/network_info.dart';
import 'package:flutter_unit_test/features/product-list/data/datasources/product_local_datasource.dart';
import 'package:flutter_unit_test/features/product-list/data/datasources/product_remote_datasource.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';
import 'package:flutter_unit_test/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_unit_test/features/product-list/domain/repositories/product_repository.dart';
import 'package:meta/meta.dart';

class ProductRepositoryImpl extends ProductRepository{
  final ProductLocalDataSource productLocalDataSource;
  final ProductRemoteDataSource productRemoteDataSource;
  final NetWorkInfo netWorkInfo;

  ProductRepositoryImpl({
    @required this.productLocalDataSource,
    @required this.productRemoteDataSource,
    @required this.netWorkInfo
  });

  @override
  Future<Either<Failure, Product>> getProduct(int id) {

  }

  @override
  Future<Either<Failure, List<Product>>> getProducts() {

  }

}
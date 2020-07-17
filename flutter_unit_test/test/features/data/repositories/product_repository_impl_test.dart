import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/core/platform/network_info.dart';
import 'package:flutter_unit_test/features/product-list/data/datasources/product_local_datasource.dart';
import 'package:flutter_unit_test/features/product-list/data/datasources/product_remote_datasource.dart';
import 'package:flutter_unit_test/features/product-list/data/repositories/product_repository_impl.dart';
import 'package:mockito/mockito.dart';

class MockProductLocalDataSource extends Mock implements ProductLocalDataSource{}
class MockProductRemoteDataSource extends Mock implements ProductRemoteDataSource{}
class MockNetWorkInfo extends Mock implements NetWorkInfo{}

void main() {
  MockProductLocalDataSource mockProductLocalDataSource;
  MockProductRemoteDataSource mockProductRemoteDataSource;
  MockNetWorkInfo mockNetWorkInfo;
  ProductRepositoryImpl productRepositoryImpl;

  setUp((){
    productRepositoryImpl = ProductRepositoryImpl(
      productLocalDataSource: mockProductLocalDataSource, 
      productRemoteDataSource: mockProductRemoteDataSource, 
      netWorkInfo: mockNetWorkInfo
    );
  });
}
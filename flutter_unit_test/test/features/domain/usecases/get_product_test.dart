import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';
import 'package:flutter_unit_test/features/product-list/domain/repositories/product_repository.dart';
import 'package:flutter_unit_test/features/product-list/domain/usecases/get_product.dart';
import 'package:mockito/mockito.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  MockProductRepository repository;
  GetProduct usecase;

  setUp(() {
    repository = MockProductRepository();
    usecase = GetProduct(repository);
  });

  Product tProduct = Product(id: 1, name: 'teste');
  int tId = 1;
  
  test('should get product by Id', () async {
    //arrange
    when(repository.getProduct(tId)).thenAnswer((realInvocation) async => Right(tProduct));

    //act
    final product = await usecase.call(Params(id: 1));

    //assert
    expect(product, Right(tProduct));
    verify(repository.getProduct(tId));
    verifyNoMoreInteractions(repository);
  });
}
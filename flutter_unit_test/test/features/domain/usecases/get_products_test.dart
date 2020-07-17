import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/core/usecases/usecase.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';
import 'package:flutter_unit_test/features/product-list/domain/repositories/product_repository.dart';
import 'package:flutter_unit_test/features/product-list/domain/usecases/get_products.dart';
import 'package:mockito/mockito.dart';

class MockProductRepository extends Mock implements ProductRepository{}

void main() {
  GetProducts usecase;
  MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    usecase = GetProducts(mockProductRepository);
  });

  final tProduct = List<Product>();
  tProduct.add(Product(id: 1, name: "teste"));
  tProduct.add(Product(id: 2, name: "teste"));
  tProduct.add(Product(id: 3, name: "teste"));

  test('should get products', () async {
    //arrange
    when(mockProductRepository.getProducts()).thenAnswer((realInvocation) async => Right(tProduct));

    //act
    final result = await usecase.call(NoParams());

    //assert
    expect(result, Right(tProduct));
    verify(mockProductRepository.getProducts());
    verifyNoMoreInteractions(mockProductRepository);
  });
}
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/features/product-list/data/models/product_model.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';

void main() {
  final tProductModel = ProductModel(id: 1, name: 'Banana');

  test('should be a subclass an entity.', () async {
    expect(tProductModel, isA<Product>());
  });

  group('Json Test group', (){
    test('should return a valid Model when ID Json is a integer.', (){
      //arrange
      final String jsonString = '{"id": 1,"name": "Banana"}';
      final Map<String, dynamic> json = jsonDecode(jsonString);
      //act      
      ProductModel product = ProductModel.jsonConvert(json);
      //assert
      expect(product, tProductModel);
    });
    test('should return a valid model when ID Json is a double.', (){
      //arrange
      final String jsonString = '{"id": 1.0,"name": "Banana"}';
      final Map<String, dynamic> json = jsonDecode(jsonString);
      //act      
      ProductModel product = ProductModel.jsonConvert(json);
      //assert
      expect(product, tProductModel);
    });
    test('should convert to json this model', (){
      //arrange
      final Map<String, dynamic> json = {"id": 1, "name": "Banana"};
      //assert
      expect(tProductModel.toJson(), json);
    });
  });
}
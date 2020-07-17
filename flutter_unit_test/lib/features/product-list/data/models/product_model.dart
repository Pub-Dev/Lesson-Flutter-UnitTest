import 'package:meta/meta.dart';
import 'package:flutter_unit_test/features/product-list/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    @required int id,
    @required String name
  }) : super(id: id, name: name);

  factory ProductModel.jsonConvert(Map<String, dynamic> json){
    return ProductModel(
      id: json["id"].toInt(),
      name: json["name"]
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name
    };
  }
}
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Product extends Equatable{
  final int id;
  final String name;

  Product({
    @required this.id,
    @required this.name
  }) : super([id, name]);
}
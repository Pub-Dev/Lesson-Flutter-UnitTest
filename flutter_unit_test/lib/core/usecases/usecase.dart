import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_unit_test/core/errors/failures.dart';

abstract class UseCase<Type, Dynamic> {
  Future<Either<Failure, Type>> call(Dynamic params);
}

class NoParams extends Equatable{}

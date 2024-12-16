import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';

abstract class Usecase<T, params> {
  Future<Either<Failure, T>> call(params params);
}

class NoParams {}

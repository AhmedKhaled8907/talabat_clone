import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,

  });
}

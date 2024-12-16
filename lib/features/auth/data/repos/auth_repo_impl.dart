import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_source.dart';
import 'package:talabat_clone/features/auth/data/models/user_model.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl(this.authDataSource);

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await authDataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );
      return Right(UserModel.fromEntity(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class SignUpUsecase extends Usecase<UserEntity, SignUpParams> {
  final AuthRepo authRepo;

  SignUpUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserEntity>> call(SignUpParams params) async {
    return await authRepo.signUpWithEmailAndPassword(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }
}

class SignUpParams {
  final String email;
  final String password;
  final String name;

  SignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}

import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class SignInUsecase extends Usecase<UserEntity, SignInParams> {
  final AuthRepo authRepo;

  SignInUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserEntity>> call(SignInParams params) async {
    return await authRepo.signInWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({
    required this.email,
    required this.password,
  });
}

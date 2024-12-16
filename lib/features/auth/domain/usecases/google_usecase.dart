import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class GoogleUsecase extends Usecase<UserEntity, NoParams> {
  final AuthRepo authRepo;

  GoogleUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) async {
    return await authRepo.signInWithGoogle();
  }
}

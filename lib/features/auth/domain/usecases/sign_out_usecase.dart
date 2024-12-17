import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class SignOutUsecase extends Usecase<void, NoParams> {
  final AuthRepo authRepo;

  SignOutUsecase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await authRepo.signOut();
  }
}

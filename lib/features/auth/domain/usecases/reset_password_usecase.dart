import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class ResetPasswordUsecase extends Usecase<void, ResetPasswordParams> {
  final AuthRepo authRepo;

  ResetPasswordUsecase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(ResetPasswordParams params) async {
    return await authRepo.resetPassword(email: params.email);
  }
}

class ResetPasswordParams {
  final String email;

  ResetPasswordParams({required this.email});
}

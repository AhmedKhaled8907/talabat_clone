import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_base_source.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_source.dart';
import 'package:talabat_clone/features/auth/data/models/user_model.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthDataSource authDataSource;
  final AuthDataBaseSource databaseService;

  AuthRepoImpl({
    required this.authDataSource,
    required this.databaseService,
  });

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
      UserEntity userEntity = UserEntity(
        email: email,
        uid: user.uid,
        fullName: name,
      );
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await authDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromEntity(user));
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      final user = await authDataSource.signInWithGoogle();
      return Right(UserModel.fromEntity(user));
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      final user = await authDataSource.signInWithFacebook();
      return Right(UserModel.fromEntity(user));
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({required String email}) async {
    try {
      var user = await authDataSource.resetPassword(email: email);
      return Right(user);
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      var user = await authDataSource.signOut();
      return Right(user);
    } on CustomExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  @override
  bool isSignedIn() {
    return authDataSource.isSignedIn();
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.addUserData(
      user: UserModel.fromEntity(user),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:talabat_clone/core/utils/errors/failure.dart';
import 'package:talabat_clone/core/utils/resources/app_end_points.dart';
import 'package:talabat_clone/core/utils/services/firebase_auth_services.dart';
import 'package:talabat_clone/core/utils/services/firestore_services.dart';
import 'package:talabat_clone/features/auth/data/models/user_model.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final FirestoreServices fireStoreService;

  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.fireStoreService,
  });

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
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
      final user = await firebaseAuthService.signinUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
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
      final user = await firebaseAuthService.signInWithGoogle();

      UserEntity userEntity = UserModel.fromFirebaseUser(user);
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
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      final user = await firebaseAuthService.signInWithFacebook();

      UserEntity userEntity = UserModel.fromFirebaseUser(user);
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
  Future<Either<Failure, void>> resetPassword({
    required String email,
  }) async {
    try {
      var user = await firebaseAuthService.resetPassword(email: email);
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
      var user = await firebaseAuthService.signOut();
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
    return firebaseAuthService.isSignedIn();
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await fireStoreService.addData(
      path: AppEndPoints.addUserData,
      data: UserModel.fromEntity(user).toJson(),
      documentId: user.uid,
    );
  }
}

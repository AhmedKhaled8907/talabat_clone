import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:talabat_clone/core/utils/services/firebase_auth_services.dart';
import 'package:talabat_clone/features/auth/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuthService firebaseAuthService;

  AuthDataSourceImpl(this.firebaseAuthService);

  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return UserModel.fromFirebaseUser(user);
    } on CustomExceptions catch (e) {
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await firebaseAuthService.signinUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return UserModel.fromFirebaseUser(user);
    } on CustomExceptions catch (e) {
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }
}

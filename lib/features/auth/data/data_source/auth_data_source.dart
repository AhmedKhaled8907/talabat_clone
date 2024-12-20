import 'package:firebase_auth/firebase_auth.dart';
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

  Future<UserModel> signInWithGoogle();

  Future<UserModel> signInWithFacebook();

  Future<void> resetPassword({
    required String email,
  });

  Future<void> signOut();

  bool isSignedIn();

  Future<void> deleteUser();
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
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return UserModel.fromFirebaseUser(user);
    } on CustomExceptions catch (e) {
      await _deleteUser(user);
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      await _deleteUser(user);
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

  @override
  Future<UserModel> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      return UserModel.fromFirebaseUser(user);
    } on CustomExceptions catch (e) {
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      await _deleteUser(user);
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<UserModel> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      return UserModel.fromFirebaseUser(user);
    } on CustomExceptions catch (e) {
      await _deleteUser(user);
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> resetPassword({required String email}) async {
    try {
      await firebaseAuthService.resetPassword(email: email);
    } on CustomExceptions catch (e) {
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuthService.signOut();
    } on CustomExceptions catch (e) {
      throw CustomExceptions(message: e.message);
    } on Exception catch (e) {
      throw CustomExceptions(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  bool isSignedIn() {
    return firebaseAuthService.isSignedIn();
  }

  @override
  Future<void> deleteUser() async {
    return firebaseAuthService.deleteUser();
  }

  Future<void> _deleteUser(User? user) async {
    if (user != null) {
      await user.delete();
    }
  }
}

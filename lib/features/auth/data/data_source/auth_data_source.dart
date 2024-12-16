import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:talabat_clone/core/utils/services/firebase_auth_services.dart';
import 'package:talabat_clone/features/auth/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
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
    } on CustomException catch (e) {
      throw CustomException(message: e.message);
    } on Exception catch (e) {
      throw CustomException(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }
}

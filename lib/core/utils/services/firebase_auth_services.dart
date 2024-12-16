import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';

class FirebaseAuthService {
  var auth = FirebaseAuth.instance;

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(
          message: "The password is too weak.",
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: "The email address is already in use.",
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message: "Please check your internet connection.",
        );
      } else {
        throw CustomException(
          message: 'An error occurred. Please try again.',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomException(
        message: 'An error occurred. Please try again.',
      );
    }
  }
}

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:talabat_clone/core/utils/errors/custom_exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
        throw CustomExceptions(
          message: "The password is too weak.",
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: "The email address is already in use.",
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
          message: "Please check your internet connection.",
        );
      } else {
        throw CustomExceptions(
          message: 'An error occurred. Please try again.',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'An error occurred. Please try again.',
      );
    }
  }

  Future<User> signinUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.loginUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'invalid-credential') {
        throw CustomExceptions(
          message: "Invalid email or password.",
        );
      } else if (e.code == 'user-not-found') {
        throw CustomExceptions(
          message: "No account found with this email address.",
        );
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(
          message: "Incorrect password.",
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
          message: "Please check your internet connection.",
        );
      } else {
        throw CustomExceptions(
          message: 'An error occurred. Please try again.',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.loginUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'An error occurred. Please try again.',
      );
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return throw CustomExceptions(
        message: 'Sign up with google failed.',
      );
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    if (loginResult.accessToken == null) {
      return throw CustomExceptions(
        message: 'Sign up with Facebook failed.',
      );
    }

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(
      loginResult.accessToken!.tokenString,
    );

    final User? user = (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user;

    if (user == null) {
      return throw CustomExceptions(
        message: 'Sign up with Facebook failed.',
      );
    }

    return user;
  }
}

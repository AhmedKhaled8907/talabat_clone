import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/utils/usecase/usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/facebook_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/google_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUsecase _signUpUsecase;
  final SignInUsecase _signInUsecase;
  final GoogleUsecase _googleUsecase;
  final FacebookUsecase _facebookUsecase;
  final ResetPasswordUsecase _resetPasswordUsecase;
  final SignOutUsecase _signOutUsecase;

  AuthBloc({
    required SignUpUsecase signUpUsecase,
    required SignInUsecase signInUsecase,
    required GoogleUsecase googleUsecase,
    required FacebookUsecase facebookUsecase,
    required ResetPasswordUsecase resetPasswordUsecase,
    required SignOutUsecase signOutUsecase,
  })  : _signUpUsecase = signUpUsecase,
        _signInUsecase = signInUsecase,
        _googleUsecase = googleUsecase,
        _facebookUsecase = facebookUsecase,
        _resetPasswordUsecase = resetPasswordUsecase,
        _signOutUsecase = signOutUsecase,
        super(AuthInitial()) {
    _authLoading();
    _onSignUpEvent();
    _onSignInEvent();
    _onGoogleEvent();
    _onFacebookEvent();
    _onResetPasswordEvent();
    _onSignOutEvent();
  }

  void _authLoading() {
    return on<AuthEvent>((event, emit) {
      emit(AuthLoading());
    });
  }

  void _onSignUpEvent() {
    return on<SignUpEvent>((event, emit) async {
      final result = await _signUpUsecase(
        SignUpParams(
          email: event.email,
          password: event.password,
          name: event.name,
        ),
      );

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }

  void _onSignInEvent() {
    return on<SignInEvent>((event, emit) async {
      final result = await _signInUsecase(
        SignInParams(
          email: event.email,
          password: event.password,
        ),
      );

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }

  void _onGoogleEvent() {
    return on<GoogleEvent>((event, emit) async {
      final result = await _googleUsecase(NoParams());

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }

  void _onFacebookEvent() {
    return on<FacebookEvent>((event, emit) async {
      final result = await _facebookUsecase(NoParams());

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }

  void _onResetPasswordEvent() {
    return on<ResetPasswordEvent>((event, emit) async {
      final result = await _resetPasswordUsecase(
        ResetPasswordParams(
          email: event.email,
        ),
      );

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }

  void _onSignOutEvent() {
    return on<SignOutEvent>((event, emit) async {
      final result = await _signOutUsecase(NoParams());

      result.fold((failure) {
        emit(AuthFailure(message: failure.message));
      }, (user) => emit(AuthSuccess()));
    });
  }
}

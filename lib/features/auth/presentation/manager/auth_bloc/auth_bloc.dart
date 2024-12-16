import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUsecase _signUpUsecase;
  final SignInUsecase _signInUsecase;

  AuthBloc({
    required SignUpUsecase signUpUsecase,
    required SignInUsecase signInUsecase,
  })  : _signUpUsecase = signUpUsecase,
        _signInUsecase = signInUsecase,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(AuthLoading());
    });
    _onSignUpEvent();
    _onSignInEvent();
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
}
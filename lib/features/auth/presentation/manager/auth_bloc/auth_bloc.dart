import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUsecase _signUpUsecase;

  AuthBloc({
    required SignUpUsecase signUpUsecase,
  })  : _signUpUsecase = signUpUsecase,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(AuthLoading());
    });
    _onSignUpEvent();
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
}

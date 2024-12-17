part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class SignUpEvent extends AuthEvent {
  final String email;
  final String password;
  final String name;

  SignUpEvent({
    required this.email,
    required this.password,
    required this.name,
  });
}

final class SignInEvent extends AuthEvent {
  final String email;
  final String password;

  SignInEvent({
    required this.email,
    required this.password,
  });
}

final class GoogleEvent extends AuthEvent {}

final class FacebookEvent extends AuthEvent {}

final class ResetPasswordEvent extends AuthEvent {
  final String email;

  ResetPasswordEvent({
    required this.email,
  });
}

final class SignOutEvent extends AuthEvent {}

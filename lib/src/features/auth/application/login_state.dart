// In lib/src/features/auth/application/login_state.dart
import 'package:flutter/foundation.dart';

@immutable
abstract class LoginState {
  final bool isRememberMeChecked;
  const LoginState({this.isRememberMeChecked = false});
}

class LoginInitial extends LoginState {
  const LoginInitial({super.isRememberMeChecked});
}

class LoginLoading extends LoginState {
  const LoginLoading({super.isRememberMeChecked});
}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String errorMessage;
  const LoginFailure(this.errorMessage, {super.isRememberMeChecked});
}
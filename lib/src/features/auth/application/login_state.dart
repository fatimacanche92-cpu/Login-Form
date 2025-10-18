// In lib/src/features/auth/application/login_state.dart
import 'package:flutter/foundation.dart';

@immutable
class LoginState {
  final bool isRememberMeChecked;

  const LoginState({this.isRememberMeChecked = false});

  LoginState copyWith({bool? isRememberMeChecked}) {
    return LoginState(
      isRememberMeChecked: isRememberMeChecked ?? this.isRememberMeChecked,
    );
  }
}

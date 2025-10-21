// In lib/src/features/auth/application/login_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());

  void toggleRememberMe(bool newValue) {
    if (state is LoginInitial || state is LoginFailure) {
      emit(LoginInitial(isRememberMeChecked: newValue));
    } else if (state is LoginLoading) {
      // While loading, we can't change the main state, but we can update the checkbox
      // For this simple case, we can choose to ignore it or handle it.
      // Let's keep it simple and allow it only on initial/failure states.
    }
  }

  Future<void> login(String email, String password) async {
    emit(LoginLoading(isRememberMeChecked: state.isRememberMeChecked));
    await Future.delayed(const Duration(seconds: 2)); // Simula una llamada de red

    if (email == 'test@test.com' && password == 'password') {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure('Invalid email or password', isRememberMeChecked: state.isRememberMeChecked));
    }
  }
}
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginTogglePasswordVisibilityEvent>(_togglePasswordVisibility);
  }

  _togglePasswordVisibility(LoginTogglePasswordVisibilityEvent event, emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}

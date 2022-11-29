import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../repository/user_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({
    required this.userRepository,
  }) : super(const LoginState.initial()) {
    on<LoginTogglePasswordVisibilityEvent>(_togglePasswordVisibility);
    on<LoginDoLoginEvent>(_doLogin);
  }

  _togglePasswordVisibility(LoginTogglePasswordVisibilityEvent event, emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  _doLogin(LoginDoLoginEvent event, emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await userRepository.login(username: event.username, password: event.password);
    if (!result.response.status) {
      emit(state.copyWith(
        error: result.response.error!.message,
        isLoading: false,
      ));
      return;
    }
    emit(state.copyWith(
      goToHome: true,
      isLoading: false,
    ));
  }
}

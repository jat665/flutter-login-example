part of 'login_bloc.dart';

class LoginState extends Equatable {
  final bool isPasswordVisible;

  const LoginState({
    required this.isPasswordVisible,
  });

  const LoginState.initial({
    this.isPasswordVisible = false,
  });

  LoginState copyWith({
    bool? isPasswordVisible,
  }) {
    return LoginState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object?> get props => [isPasswordVisible];
}

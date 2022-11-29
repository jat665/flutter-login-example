part of 'login_bloc.dart';

class LoginState extends Equatable {
  final bool isPasswordVisible;
  final bool isLoading;
  final String? error;
  final bool? goToHomePage;

  const LoginState({
    required this.isPasswordVisible,
    required this.isLoading,
    this.error,
    this.goToHomePage,
  });

  const LoginState.initial({
    this.isPasswordVisible = false,
    this.isLoading = false,
    this.error,
    this.goToHomePage,
  });

  LoginState copyWith({
    bool? isPasswordVisible,
    bool? isLoading,
    String? error,
    bool? goToHome,
  }) {
    return LoginState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      goToHomePage: goToHome,
    );
  }

  @override
  List<Object?> get props => [
        isPasswordVisible,
        isLoading,
        error,
        goToHomePage,
      ];
}

part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginTogglePasswordVisibilityEvent extends LoginEvent {}

class LoginDoLoginEvent extends LoginEvent {
  final String username;
  final String password;

  LoginDoLoginEvent({required this.username, required this.password});
}

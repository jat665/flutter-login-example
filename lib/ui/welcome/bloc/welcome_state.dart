part of 'welcome_bloc.dart';

class WelcomeState extends Equatable {
  final bool? goToLoginPage;

  const WelcomeState({
    this.goToLoginPage,
  });

  const WelcomeState.initial({
    this.goToLoginPage,
  });

  WelcomeState copyWith({
    bool? goToLoginPage,
  }) {
    return WelcomeState(
      goToLoginPage: goToLoginPage,
    );
  }

  @override
  List<Object?> get props => [goToLoginPage];
}

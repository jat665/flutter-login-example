part of 'welcome_bloc.dart';

abstract class WelcomeEvent {
  const WelcomeEvent();
}

class WelcomeContinueClickedEvent extends WelcomeEvent {}

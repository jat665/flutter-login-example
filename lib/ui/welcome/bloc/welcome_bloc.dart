import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kripton/constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'welcome_event.dart';

part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(const WelcomeState.initial()) {
    on<WelcomeContinueClickedEvent>(_setWasWelcomeShowed);
  }

  _setWasWelcomeShowed(WelcomeContinueClickedEvent event, emit) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setBool(PreferencesKeys.wasWelcomeShowed, true);
    emit(state.copyWith(goToLoginPage: true));
  }
}

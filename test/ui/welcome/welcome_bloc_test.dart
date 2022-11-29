import 'package:kripton/ui/welcome/bloc/welcome_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('WelcomeBloc', () {
    late WelcomeBloc welcomeBloc;

    setUp(() {
      welcomeBloc = WelcomeBloc();
      SharedPreferences.setMockInitialValues({});
    });

    test('initial state is initial', () {
      const initialState = WelcomeState(
        goToLoginPage: null,
      );
      expect(welcomeBloc.state, initialState);
    });

    blocTest(
      'emits state.goToLoginPage true '
      'when WelcomeContinueClickedEvent is added',
      build: () => welcomeBloc,
      act: (bloc) => bloc.add(WelcomeContinueClickedEvent()),
      expect: () {
        const expectedState = WelcomeState(
          goToLoginPage: true,
        );
        return [expectedState];
      },
    );
  });
}

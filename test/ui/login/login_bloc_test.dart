import 'package:kripton/ui/login/bloc/login_bloc.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('LoginBloc', () {
    late LoginBloc loginBloc;

    setUp(() {
      loginBloc = LoginBloc();
    });

    test('initial state is initial', () {
      const initialState = LoginState(
        isPasswordVisible: false,
      );
      expect(loginBloc.state, initialState);
    });

    blocTest(
      'emits state.isPasswordVisible true '
      'when LoginTogglePasswordVisibilityEvent is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginTogglePasswordVisibilityEvent()),
      expect: () {
        const expectedState = LoginState(isPasswordVisible: true);
        return [expectedState];
      },
    );

    blocTest(
      'emits state.isPasswordVisible false '
      'when seeded with true '
      'and LoginTogglePasswordVisibilityEvent is added ',
      build: () => loginBloc,
      seed: () => const LoginState(isPasswordVisible: true),
      act: (bloc) {
        bloc.add(LoginTogglePasswordVisibilityEvent());
      },
      expect: () {
        const expectedState = LoginState(isPasswordVisible: false);
        return [expectedState];
      },
    );
  });
}

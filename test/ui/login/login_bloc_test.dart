import 'package:kripton/ui/login/bloc/login_bloc.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

import '../../repository/user_repository_mock.dart';

void main() {
  group('LoginBloc', () {
    late LoginBloc loginBloc;

    setUp(() {
      loginBloc = LoginBloc(userRepository: UserRepositoryMock());
    });

    test('initial state is initial', () {
      const initialState = LoginState(
        isPasswordVisible: false,
        isLoading: false,
      );
      expect(loginBloc.state, initialState);
    });

    blocTest(
      'emits state.isPasswordVisible true '
      'when LoginTogglePasswordVisibilityEvent is added',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginTogglePasswordVisibilityEvent()),
      expect: () {
        const expectedState = LoginState(
          isPasswordVisible: true,
          isLoading: false,
        );
        return [expectedState];
      },
    );

    blocTest(
      'emits state.isPasswordVisible false '
      'when seeded with true '
      'and LoginTogglePasswordVisibilityEvent is added ',
      build: () => loginBloc,
      seed: () => const LoginState(
        isPasswordVisible: true,
        isLoading: false,
      ),
      act: (bloc) {
        bloc.add(LoginTogglePasswordVisibilityEvent());
      },
      expect: () {
        const expectedState = LoginState(
          isPasswordVisible: false,
          isLoading: false,
        );
        return [expectedState];
      },
    );
  });
}

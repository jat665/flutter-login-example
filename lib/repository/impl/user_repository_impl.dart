import 'package:kripton/api/response/login_response.dart';
import 'package:kripton/repository/user_repository.dart';

import 'package:kripton/api/api.dart';
import 'package:kripton/api/request/login_request.dart';

class UserRepositoryImpl extends UserRepository {
  final Api api;

  UserRepositoryImpl({
    required this.api,
  });

  @override
  Future<LoginResponse> login({required String username, required String password}) {
    return api.login(
        request: LoginRequest(
      username: username,
      password: password,
    ));
  }
}

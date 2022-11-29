import 'package:kripton/api/response/login_response.dart';

abstract class UserRepository {
  Future<LoginResponse> login({required String username, required String password});
}

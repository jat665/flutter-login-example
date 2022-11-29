import 'package:kripton/api/request/login_request.dart';
import 'package:kripton/api/response/login_response.dart';

abstract class Api {
  Future<LoginResponse> login({required LoginRequest request});
}

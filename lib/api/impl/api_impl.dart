import 'package:kripton/api/api.dart';
import 'package:kripton/api/request/login_request.dart';
import 'package:kripton/api/response/error_data.dart';
import 'package:kripton/api/response/response_data.dart';
import 'package:kripton/api/response/login_response.dart';

class ApiImpl extends Api {
  @override
  Future<LoginResponse> login({required LoginRequest request}) async {
    await Future.delayed(const Duration(seconds: 2));
    return LoginResponse(ResponseData(false, error: ErrorData(code: -1, message: 'credenciales no validas')));
  }
}

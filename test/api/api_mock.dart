import 'package:kripton/api/api.dart';
import 'package:kripton/api/response/error_data.dart';
import 'package:kripton/api/response/response_data.dart';
import 'package:kripton/api/request/login_request.dart';
import 'package:kripton/api/response/login_response.dart';

import '../fixtures/reason_fixtures.dart';
import '../fixtures/user_fixtures.dart';
import '../fixtures/vehicle_fixtures.dart';

class ApiMock extends Api {
  @override
  Future<LoginResponse> login({required LoginRequest request}) async {
    await Future.delayed(const Duration(seconds: 2));
    final userData = UserFixtures.getUser(request: request);
    if (userData == null) {
      return LoginResponse(
        ResponseData(false, error: ErrorData(code: -1, message: 'error message')),
      );
    }

    return LoginResponse(
      const ResponseData(true),
      data: LoginData(
        user: userData,
        vehicle: VehicleFixtures.vehicleType1,
        reasons: ReasonFixtures.getAll(),
      ),
    );
  }
}

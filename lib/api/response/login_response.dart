import 'package:kripton/api/response/response_data.dart';

import 'package:kripton/api/model/reason_data.dart';
import 'package:kripton/api/model/user_data.dart';
import 'package:kripton/api/model/vehicle_data.dart';

class LoginResponse {
  final ResponseData response;
  final LoginData? data;

  const LoginResponse(
    this.response, {
    this.data,
  });
}

class LoginData {
  final UserData user;
  final VehicleData? vehicle;
  final List<ReasonData> reasons;

  LoginData({
    required this.user,
    this.vehicle,
    required this.reasons,
  });
}

import 'error_data.dart';

class ResponseData {
  final bool status;
  final ErrorData? error;

  const ResponseData(this.status, {this.error});
}

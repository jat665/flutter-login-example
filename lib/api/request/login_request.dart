class LoginRequest {
  final String username;
  final String password;
  final String pushToken;

  LoginRequest({
    required this.username,
    required this.password,
    this.pushToken = 'push_token',
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'pushToken': pushToken,
    };
  }
}

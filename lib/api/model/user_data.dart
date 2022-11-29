class UserData {
  final int id;
  final String name;
  final String surname;
  final String email;
  final String phone;
  final int rating;
  final int available;

  UserData({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.phone,
    required this.rating,
    required this.available,
  });

  static UserData fromMap(Map<String, dynamic> data) {
    return UserData(
      id: int.parse(data['user_id']),
      name: data['personal_nombre'],
      surname: data['personal_apellido'],
      email: data['email_usuario'],
      phone: data['personal_telefono'],
      rating: double.parse(data['personal_califica']).toInt(),
      available: int.parse(data['estado_turno']),
    );
  }
}

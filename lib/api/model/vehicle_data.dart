class VehicleData {
  final int type;
  final String licencePlate;

  VehicleData({
    required this.type,
    required this.licencePlate,
  });

  static VehicleData? fromMap(Map<String, dynamic> data) {
    if (data['tipo_unidad'] == null) return null;

    return VehicleData(
      type: int.parse(data['tipo_unidad']),
      licencePlate: data['placa'],
    );
  }
}

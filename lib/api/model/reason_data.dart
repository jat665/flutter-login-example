class ReasonData {
  final int id;
  final String name;
  final int type;
  final int orderType;
  final String? group;

  ReasonData({
    required this.id,
    required this.name,
    required this.type,
    required this.orderType,
    this.group,
  });
}

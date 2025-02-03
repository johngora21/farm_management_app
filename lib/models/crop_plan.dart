class CropPlan {
  final String id;
  final String name;
  final DateTime plantingDate;
  final DateTime harvestDate;

  CropPlan({
    required this.id,
    required this.name,
    required this.plantingDate,
    required this.harvestDate,
  });

  factory CropPlan.fromJson(Map<String, dynamic> json) {
    return CropPlan(
      id: json['id'],
      name: json['name'],
      plantingDate: DateTime.parse(json['plantingDate']),
      harvestDate: DateTime.parse(json['harvestDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'plantingDate': plantingDate.toIso8601String(),
      'harvestDate': harvestDate.toIso8601String(),
    };
  }
}

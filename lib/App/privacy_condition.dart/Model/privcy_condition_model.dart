class PrivcyConditionModel {
  final int id;
  final String name;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;

  PrivcyConditionModel({
    required this.id,
    required this.name,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PrivcyConditionModel.fromJson(Map<String, dynamic> json) =>
      PrivcyConditionModel(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        content: json["content"] ?? "",
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  factory PrivcyConditionModel.fromEmpty() => PrivcyConditionModel(
        id: 0,
        name: "",
        content: "",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

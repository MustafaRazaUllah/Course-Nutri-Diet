class UserModel {
  final int id;
  final String name;
  final String email;
  final String image;
  final DateTime emailVerifiedAt;
  final int isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;
  final bool metaData;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.emailVerifiedAt,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metaData,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        email: json["email"] ?? "",
        image: json["image"] ?? "",
        emailVerifiedAt: json["email_verified_at"] != null
            ? DateTime.parse(json["email_verified_at"])
            : DateTime.now(),
        isActive: json["is_active"] ?? 0,
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        deletedAt: json["deleted_at"] ?? "",
        metaData: json["meta_data"] ?? false,
      );
}

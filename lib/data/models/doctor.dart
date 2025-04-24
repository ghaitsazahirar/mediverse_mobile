class DoctorModel {
  final String? id;
  final String? name;
  final String? specialization;
  final String? facilityId;
  final String? photoUrl;
  final DateTime? createdAt;
  final String? poliId;
  final String? userId;
  final String? facilityName;

  DoctorModel({
    this.id,
    this.name,
    this.specialization,
    this.facilityId,
    this.photoUrl,
    this.createdAt,
    this.poliId,
    this.userId,
    this.facilityName,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      specialization: json['specialization'] as String?,
      facilityId: json['facility_id'] as String?,
      photoUrl: json['photo_url'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at'])
          : null,
      poliId: json['poli_id'] as String?,
      userId: json['user_id'] as String?,
      facilityName: json['facility'] != null
          ? json['facility']['name'] as String?
          : null,
    );
  }
}

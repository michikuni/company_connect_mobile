import 'package:mp_corporation_app/domain/entities/employee/profile.dart';

class ProfileModel extends ProfileEntity {
  ProfileModel({
    required super.name,
    required super.gender,
    required super.identityType,
    required super.identityNumber,
    required super.identityIssueDate,
    required super.identityIssuePlace,
    required super.email,
    required super.phone,
    required super.emergencyName,
    required super.emergencyPhone,
    required super.emergencyRelationship,
    required super.dateOfBirth,
    required super.health,
    required super.married,
    required super.permanentResidence,
    required super.nowResidence,
    super.avatarUrl,
    required super.educationLevel,
    required super.major,
    super.certificate,
    required super.skillSet,
    required super.expYears,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'],
      gender: json['gender'],
      identityType: json['identityType'],
      identityNumber: json['identityNumber'],
      identityIssueDate: json['identityIssueDate'],
      identityIssuePlace: json['identityIssuePlace'],
      email: json['email'],
      phone: json['phoneNumber'],
      emergencyName: json['emergencyContactName'],
      emergencyPhone: json['emergencyContactPhone'],
      emergencyRelationship: json['emergencyContactRelationship'],
      dateOfBirth: json['dateOfBirth'],
      health: json['health'],
      married: json['married'],
      permanentResidence: json['permanentResidence'],
      nowResidence: json['nowResidence'],
      avatarUrl: json['avatar'],
      educationLevel: json['educationLevel'],
      major: json['major'],
      certificate: json['certificate'] != null
          ? List<String>.from(json['certificate'])
          : null,
      skillSet: List<String>.from(json['skillSet']),
      expYears: json['experienceYears'],
    );
  }
}

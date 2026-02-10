class ProfileEntity {
  final String name;
  final String gender;
  final String identityType;
  final String identityNumber;
  final int identityIssueDate;
  final String identityIssuePlace;
  final String email;
  final String phone;
  final String emergencyName;
  final String emergencyPhone;
  final String emergencyRelationship;
  final String dateOfBirth;
  final String health;
  final String married;
  final String permanentResidence;
  final String nowResidence;
  final String? avatarUrl;
  final String educationLevel;
  final String major;
  final List<String>? certificate;
  final List<String> skillSet;
  final int expYears;

  ProfileEntity({
    required this.name,
    required this.gender,
    required this.identityType,
    required this.identityNumber,
    required this.identityIssueDate,
    required this.identityIssuePlace,
    required this.email,
    required this.phone,
    required this.emergencyName,
    required this.emergencyPhone,
    required this.emergencyRelationship,
    required this.dateOfBirth,
    required this.health,
    required this.married,
    required this.permanentResidence,
    required this.nowResidence,
    this.avatarUrl,
    required this.educationLevel,
    required this.major,
    this.certificate,
    required this.skillSet,
    required this.expYears,
  });
}

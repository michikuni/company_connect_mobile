class ProfileModel {
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

  ProfileModel({
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

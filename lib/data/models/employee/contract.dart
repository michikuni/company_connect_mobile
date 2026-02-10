class ContractModel {
  final String typeContract;
  final String startDate;
  final String? endDate;
  final double? contractExpire;
  final String? probationStartDate;
  final String? probationEndDate;
  final String taxCode;
  final String? socialInsuranceNumber;
  final String? healthInsuranceNumber;

  const ContractModel({
    required this.typeContract,
    required this.startDate,
    this.endDate,
    this.contractExpire,
    this.probationStartDate,
    this.probationEndDate,
    required this.taxCode,
    this.socialInsuranceNumber,
    this.healthInsuranceNumber,
  });

  factory ContractModel.fromJson(Map<String, dynamic> json) {
    return ContractModel(
      typeContract: json['typeContract'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'],
      contractExpire: json['contractExpire'] != null
          ? (json['contractExpire'] as num).toDouble()
          : null,
      probationStartDate: json['probationStartDate'],
      probationEndDate: json['probationEndDate'],
      taxCode: json['taxCode'] as String,
      socialInsuranceNumber: json['socialInsuranceNumber'],
      healthInsuranceNumber: json['healthInsuranceNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "typeContract": typeContract,
      "startDate": startDate,
      "endDate": endDate,
      "contractExpire": contractExpire,
      "probationStartDate": probationStartDate,
      "probationEndDate": probationEndDate,
      "taxCode": taxCode,
      "socialInsuranceNumber": socialInsuranceNumber,
      "healthInsuranceNumber": healthInsuranceNumber,
    };
  }
}

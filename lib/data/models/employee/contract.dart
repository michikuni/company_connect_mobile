import 'package:mp_corporation_app/domain/entities/employee/contract.dart';

class ContractModel extends ContractEntity {
  const ContractModel({
    required super.typeContract,
    required super.startDate,
    super.endDate,
    super.contractExpire,
    super.probationStartDate,
    super.probationEndDate,
    required super.taxCode,
    super.socialInsuranceNumber,
    super.healthInsuranceNumber,
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

class ContractEntity {
  final String typeContract;
  final String startDate;
  final String? endDate;
  final double? contractExpire;
  final String? probationStartDate;
  final String? probationEndDate;
  final String taxCode;
  final String? socialInsuranceNumber;
  final String? healthInsuranceNumber;

  const ContractEntity({
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
}

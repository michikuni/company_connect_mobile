class PayrollModel {
  final String salaryType;
  final double baseSalary;
  final double? allowance;
  final double? bonus;
  final double? overtimeRate;
  final double income;
  final String currency;
  final String payday;
  final String bankAccountNumber;
  final String bankAccountName;
  final String bankName;
  final String bankBranch;

  const PayrollModel({
    required this.salaryType,
    required this.baseSalary,
    this.allowance,
    this.bonus,
    this.overtimeRate,
    required this.income,
    required this.currency,
    required this.payday,
    required this.bankAccountNumber,
    required this.bankAccountName,
    required this.bankName,
    required this.bankBranch,
  });

  factory PayrollModel.fromJson(Map<String, dynamic> json) {
    return PayrollModel(
      salaryType: json['salaryType'] as String,
      baseSalary: (json['baseSalary'] as num).toDouble(),
      allowance: json['allowance'] != null
          ? (json['allowance'] as num).toDouble()
          : null,
      bonus: json['bonus'] != null
          ? (json['bonus'] as num).toDouble()
          : null,
      overtimeRate: json['overtimeRate'] != null
          ? (json['overtimeRate'] as num).toDouble()
          : null,
      income: (json['income'] as num).toDouble(),
      currency: json['currency'] as String,
      payday: json['payday'] as String,
      bankAccountNumber: json['bankAccountNumber'] as String,
      bankAccountName: json['bankAccountName'] as String,
      bankName: json['bankName'] as String,
      bankBranch: json['bankBranch'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "salaryType": salaryType,
      "baseSalary": baseSalary,
      "allowance": allowance,
      "bonus": bonus,
      "overtimeRate": overtimeRate,
      "income": income,
      "currency": currency,
      "payday": payday,
      "bankAccountNumber": bankAccountNumber,
      "bankAccountName": bankAccountName,
      "bankName": bankName,
      "bankBranch": bankBranch,
    };
  }
}

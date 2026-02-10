import 'package:mp_corporation_app/domain/entities/employee/payroll.dart';

class PayrollModel extends PayrollEntity{
  const PayrollModel({
    required super.salaryType,
    required super.baseSalary,
    super.allowance,
    super.bonus,
    super.overtimeRate,
    required super.income,
    required super.currency,
    required super.payday,
    required super.bankAccountNumber,
    required super.bankAccountName,
    required super.bankName,
    required super.bankBranch,
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

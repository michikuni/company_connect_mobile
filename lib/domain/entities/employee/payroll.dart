class PayrollEntity {
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

  const PayrollEntity({
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
}

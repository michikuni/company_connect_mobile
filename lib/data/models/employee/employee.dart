import 'package:mp_corporation_app/data/models/employee/contract.dart';
import 'package:mp_corporation_app/data/models/employee/payroll.dart';
import 'package:mp_corporation_app/data/models/employee/profile.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';

class EmployeeModel extends EmployeeEntity {
  const EmployeeModel({
    required super.id,
    required super.employeeId,
    required super.department,
    required super.position,
    required super.status,
    required super.workingType,
    required super.isActive,
    super.managerId,
    required super.createdAt,
    required super.updatedAt,
    required super.createdBy,
    super.note,
    required super.profile,
    required super.contract,
    required super.payroll,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      department: json['department'] as String,
      position: json['position'] as String,
      status: json['status'] as String,
      workingType: json['workingType'] as String,
      isActive: json['isActive'] as bool,
      managerId: json['managerId'],
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      createdBy: json['createdBy'] as String,
      note: json['note'],
      profile: ProfileModel.fromJson(json['profile']),
      contract: ContractModel.fromJson(json['contract']),
      payroll: PayrollModel.fromJson(json['payroll']),
    );
  }
}

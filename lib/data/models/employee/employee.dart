import 'package:mp_corporation_app/data/models/employee/contract.dart';
import 'package:mp_corporation_app/data/models/employee/payroll.dart';
import 'package:mp_corporation_app/data/models/employee/profile.dart';

class EmployeeModel {
  final String id;
  final String employeeId;
  final String department;
  final String position;
  final String status;
  final String workingType;
  final bool isActive;
  final String? managerId;
  final int createdAt;
  final int updatedAt;
  final String createdBy;
  final String? note;
  final ProfileModel profile;
  final ContractModel contract;
  final PayrollModel payroll;

  const EmployeeModel({
    required this.id,
    required this.employeeId,
    required this.department,
    required this.position,
    required this.status,
    required this.workingType,
    required this.isActive,
    this.managerId,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    this.note,
    required this.profile,
    required this.contract,
    required this.payroll,
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

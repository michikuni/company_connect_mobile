import 'package:mp_corporation_app/data/models/employee/contract.dart';
import 'package:mp_corporation_app/data/models/employee/payroll.dart';
import 'package:mp_corporation_app/data/models/employee/profile.dart';

class EmployeeEntity {
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

  const EmployeeEntity({
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
}

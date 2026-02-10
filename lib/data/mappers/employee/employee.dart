import 'package:mp_corporation_app/data/models/employee/employee.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';

class EmployeeMapper {
  static EmployeeEntity toEntity(EmployeeModel emp) {
    return EmployeeEntity(
      id: emp.id,
      employeeId: emp.employeeId,
      department: emp.department,
      position: emp.position,
      status: emp.status,
      workingType: emp.workingType,
      isActive: emp.isActive,
      createdAt: emp.createdAt,
      updatedAt: emp.updatedAt,
      createdBy: emp.createdBy,
      profile: emp.profile,
      contract: emp.contract,
      payroll: emp.payroll,
    );
  }
}

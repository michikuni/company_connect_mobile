import 'package:mp_corporation_app/data/models/employee/employee.dart';

abstract class IEmployeeRemote{
  Future<List<EmployeeModel>> getAllEmployee();
  // Future<EmployeeModel> getEmployee();
}
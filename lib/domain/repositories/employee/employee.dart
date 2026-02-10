import 'package:fpdart/fpdart.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';

abstract class IEmployeeRepository{
  Future<Either<String, EmployeeEntity>> getEmployee();
}
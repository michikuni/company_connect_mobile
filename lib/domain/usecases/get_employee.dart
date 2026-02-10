import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';
import 'package:mp_corporation_app/domain/repositories/employee/employee.dart';

@lazySingleton
class GetEmployeeUseCase{
  final IEmployeeRepository _employeeRepository;
  GetEmployeeUseCase(this._employeeRepository);

  Future<Either<String, EmployeeEntity>> call(){
    return _employeeRepository.getEmployee();
  }
}
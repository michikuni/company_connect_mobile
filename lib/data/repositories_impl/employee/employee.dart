import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mp_corporation_app/data/datasources/employee/remote/employee_remote.dart';
import 'package:mp_corporation_app/data/mappers/employee/employee.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';
import 'package:mp_corporation_app/domain/repositories/employee/employee.dart';

@LazySingleton(as: IEmployeeRepository)
class EmployeeRepositoryImpl extends IEmployeeRepository{
  final IEmployeeRemote datasource;
  EmployeeRepositoryImpl(this.datasource);
  @override
  Future<Either<String ,EmployeeEntity>> getEmployee() async {
    try{
      final response = await datasource.getEmployee();
      EmployeeMapper.toEntity(response);
      return Right(response);
    } catch (e){
      return Left(e.toString());
    }
  }
}
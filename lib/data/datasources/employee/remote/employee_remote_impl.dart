import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mp_corporation_app/core/constants/api_endpoint.dart';
import 'package:mp_corporation_app/data/datasources/employee/remote/employee_remote.dart';
import 'package:mp_corporation_app/data/models/employee/employee.dart';

@LazySingleton(as: IEmployeeRemote)
class EmployeeRemoteImpl implements IEmployeeRemote {
  final Dio dio;
  EmployeeRemoteImpl(this.dio);
  @override
  Future<EmployeeModel> getEmployee() async {
    try {
      final response = await dio.get(ApiEndpoint.employeeEP);
      log(EmployeeModel.fromJson(response.data).profile.name);
      return EmployeeModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

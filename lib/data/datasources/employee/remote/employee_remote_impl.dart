import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mp_corporation_app/core/constants/api_endpoint.dart';
import 'package:mp_corporation_app/data/datasources/employee/remote/employee_remote.dart';
import 'package:mp_corporation_app/data/models/employee/employee.dart';

class EmployeeRemoteImpl implements IEmployeeRemote {
  final Dio dio;
  EmployeeRemoteImpl(this.dio);
  @override
  Future<List<EmployeeModel>> getAllEmployee() async {
    try {
      final response = await dio.get(ApiEndpoint.employeeEP);
      final List data = response.data;
      return data.map((e) {
        try {
          return EmployeeModel.fromJson(e);
        } catch (e) {
          log(e.toString());
          rethrow;
        }
      }).toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

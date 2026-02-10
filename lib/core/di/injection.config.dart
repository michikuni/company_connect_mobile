// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mp_corporation_app/core/network/dio_client.dart' as _i844;
import 'package:mp_corporation_app/data/datasources/employee/remote/employee_remote.dart'
    as _i170;
import 'package:mp_corporation_app/data/datasources/employee/remote/employee_remote_impl.dart'
    as _i759;
import 'package:mp_corporation_app/data/repositories_impl/employee/employee.dart'
    as _i277;
import 'package:mp_corporation_app/domain/repositories/employee/employee.dart'
    as _i37;
import 'package:mp_corporation_app/domain/usecases/get_employee.dart'
    as _i852;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioClient = _$DioClient();
    gh.lazySingleton<_i361.Dio>(() => dioClient.dio());
    gh.lazySingleton<_i170.IEmployeeRemote>(
      () => _i759.EmployeeRemoteImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i37.IEmployeeRepository>(
      () => _i277.EmployeeRepositoryImpl(gh<_i170.IEmployeeRemote>()),
    );
    gh.lazySingleton<_i852.GetEmployeeUseCase>(
      () => _i852.GetEmployeeUseCase(gh<_i37.IEmployeeRepository>()),
    );
    return this;
  }
}

class _$DioClient extends _i844.DioClient {}

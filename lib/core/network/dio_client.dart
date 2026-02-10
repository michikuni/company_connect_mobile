import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mp_corporation_app/core/constants/api_endpoint.dart';

@module
abstract class DioClient{
  @lazySingleton
  Dio dio() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiEndpoint.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15)
    ));
    return dio;
  }
}
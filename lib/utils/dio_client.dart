import 'package:dio/dio.dart';

import 'api_logging_interceptor.dart';
import 'error_handling_interceptor.dart';

class DioClient {
  static Dio getDioInstance() {
    var dio = Dio(BaseOptions(
      baseUrl: "https://valorant-api.com/",
      connectTimeout: const Duration(minutes: 3),
      receiveTimeout: const Duration(minutes: 2),
    ))
      ..options.headers["content-type"] = "application/json"
      ..interceptors.add(ErrorHandingInterceptor())
      ..interceptors.add(LoggingInterceptor());
    return dio;
  }
}

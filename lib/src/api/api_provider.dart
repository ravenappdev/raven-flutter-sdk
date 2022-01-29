import 'package:dio/dio.dart';

abstract class ApiProvider {
  static late final Dio _dio;

  static init(String secretKey)  {
    _dio = Dio();

    _dio.options = BaseOptions(
        receiveTimeout: 15000,
        connectTimeout: 15000,
        contentType: 'application/json',
        /* If needed headers */
        headers: {
          'Authorization': 'AuthKey $secretKey',
          'Content-Type': 'application/json'
        });
  }

  static getHttpClient() => _dio;

  static const baseUrl = "https://api.ravenapp.dev/";
}

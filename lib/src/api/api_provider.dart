import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

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
    
    // if(kDebugMode){
    //   baseUrl = "https://api.staging.ravenapp.dev/";
    // }
  }

  static getHttpClient() => _dio;

  static String? baseUrl = "https://api.ravenapp.dev/";
}

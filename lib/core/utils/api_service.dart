//raper class for all api services that could i use it in my app .

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService({
    required Dio dio,
  }) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");

    return response.data;
  }
}

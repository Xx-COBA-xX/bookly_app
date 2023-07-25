import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  late final Dio _dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await _dio.get("$_baseUrl$endPoint");

    return respons.data;
  }
}

import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'auth_model.dart';

class MovieApiProvider {
  final Dio _dio = Dio();
  final _apiKey = 'your_api_key';

  Future<AuthModel> getUser() async {
    try {
      Response response = await _dio.get('https://google.com');
      print(response);
//      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
//      return UserResponse.withError("$error");
    }
  }
}
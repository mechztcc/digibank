import 'dart:io';

import 'package:digibank/app/modules/auth/models/UserModel.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final Dio _dio = Dio();
  final String api = 'http://localhost:3000';

  Future<UserModel> createAccount(
    String name,
    String document,
    String password,
  ) async {
    try {
      Response response = await _dio.post('$api/users', data: {
        'name': name,
        'document': document,
        'password': password,
      });
      UserModel user = UserModel.fromJson(response.data);
      return user;
    } on DioError catch (err) {
      if (err.response?.data != null) {
        throw Exception('${err.response?.data['message']}');
      }
      if (err.type == DioErrorType.unknown) {
        throw Exception('Algo ocorreu de errado durante a operação.');
      }
      rethrow;
    }
  }

  Future<String> createSession(
    String document,
    String password,
  ) async {
    try {
      Response response = await _dio.post('$api/auth', data: {
        'document': document,
        'password': password,
      });
      String token = response.data['token'];
      return token;
    } on DioError catch (err) {
      if (err.response?.data != null) {
        throw Exception('${err.response?.data['message']}');
      }
      if (err.type == DioErrorType.unknown) {
        throw Exception('Algo ocorreu de errado durante a operação.');
      }
      rethrow;
    }
  }
}

import 'package:dio/dio.dart';

class AuthRepository {
  final Dio _dio = Dio();
  final String api = 'http://localhost:3336/users';

  Future<String> createAccount(
    String document,
    String name,
    String password,
  ) async {
    Response response = await _dio.post(api, data: {name, document, password});
    print(response.data);
    return 'Funcionou';
  }
}

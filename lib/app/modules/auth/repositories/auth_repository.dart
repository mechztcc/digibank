import 'package:dio/dio.dart';

class AuthRepository {
  final Dio _dio = Dio();
  final String api = 'http://10.0.2.2:3336/users';

  Future<String> request() async {
    //Response response = await _dio.get(api);
    return 'Funcionou';
  }
}

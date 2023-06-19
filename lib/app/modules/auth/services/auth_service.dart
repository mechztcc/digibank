import 'package:digibank/app/modules/auth/models/UserModel.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final AuthRepository _repository;

  AuthService(this._repository);

  Future<UserModel> createAccount(
    String name,
    String document,
    String password,
  ) async {
    try {
      UserModel response = await _repository.createAccount(
        name,
        document,
        password,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> createSession(
    String document,
    String password,
  ) async {
    try {
      String token = await _repository.createSession(
        document,
        password,
      );

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);

      Modular.to.navigate('/home');
    } catch (e) {
      rethrow;
    }
  }
}

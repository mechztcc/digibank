import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';

class AuthService {
  final AuthRepository _repository;

  AuthService(this._repository);

  Future<String> createAccount(
    String document,
    String name,
    String password,
  ) async {
    String response = await _repository.createAccount(document, name, password);
    return response;
  }
}

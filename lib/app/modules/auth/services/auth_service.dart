import 'package:digibank/app/modules/auth/models/UserModel.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';

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
}

import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';

class AuthService {
  final AuthRepository _repository;

  AuthService(this._repository);

  void createAccount() async {
    String response = await _repository.request();
    print(response);
  }
}

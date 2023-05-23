import 'package:flutter_test/flutter_test.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';
 
void main() {
  late AuthRepository repository;

  setUpAll(() {
    repository = AuthRepository();
  });
}
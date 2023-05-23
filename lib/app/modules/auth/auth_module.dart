import 'package:digibank/app/modules/auth/services/auth_service.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';
import 'package:digibank/app/modules/auth/pages/create-account_page.dart';
import 'package:digibank/app/modules/auth/pages/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthService(i())),
    Bind.lazySingleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => CreateAccountPage(),
    ),
    ChildRoute(
      '/login',
      child: (_, args) => LoginPage(),
    ),
  ];
}

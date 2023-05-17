import 'package:digibank/app/modules/auth/auth_module.dart';
import 'package:digibank/app/modules/pix/pix_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/pix', module: PixModule()),
  ];
}

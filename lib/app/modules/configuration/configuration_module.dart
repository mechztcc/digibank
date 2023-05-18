import 'package:digibank/app/modules/configuration/pages/configuration_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigurationModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ConfigurationPage()),
  ];
}

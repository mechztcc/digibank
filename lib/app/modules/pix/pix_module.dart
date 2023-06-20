import 'package:digibank/app/modules/pix/pages/pix_page.dart';
import 'package:digibank/app/modules/pix/repositories/pix_repository.dart';
import 'package:digibank/app/modules/pix/services/pix_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PixModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PixRepository(), export: true),
    Bind.lazySingleton((i) => PixService(i()), export: true)
  ];


  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/create',
      child: (_, args) => PixPage(),
    ),
  ];
}

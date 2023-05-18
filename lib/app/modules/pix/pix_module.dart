import 'package:digibank/app/modules/pix/pages/pix_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PixModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/create',
      child: (_, args) => PixPage(),
    ),
  ];
}

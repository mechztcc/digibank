import 'package:digibank/app/modules/invest/pages/invest-area_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InvestModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => InvestAreaPage(),
    ),
  ];
}

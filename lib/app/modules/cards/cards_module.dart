import 'package:digibank/app/modules/cards/pages/my_cards_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MyCardsPage()),
  ];
}

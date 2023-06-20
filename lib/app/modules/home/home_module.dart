import 'package:digibank/app/modules/home/store/home-store_store.dart';
import 'package:digibank/app/modules/home/pages/home_page.dart';
import 'package:digibank/app/modules/home/pages/welcome_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStoreStore()),
    //Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const WelcomePage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}

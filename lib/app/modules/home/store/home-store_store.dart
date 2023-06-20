import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home-store_store.g.dart';

class HomeStoreStore = _HomeStoreStoreBase with _$HomeStoreStore;

abstract class _HomeStoreStoreBase with Store {
  @observable
  String name = '';

  @observable
  int balance = 0;

  @action
  getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name') ?? 'Nome não encontrado';
    balance = prefs.getInt('balance') ?? 0;
  }
}

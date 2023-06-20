import 'package:digibank/app/modules/pix/services/pix_service.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home-store_store.g.dart';

class HomeStore = _HomeStoreStoreBase with _$HomeStore;

abstract class _HomeStoreStoreBase with Store {

  @observable
  String name = '';

  @observable
  String accountCode = '';

  @observable
  int balance = 0;

  @action
  getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name') ?? 'Nome não encontrado';
    accountCode = prefs.getString('accountCode') ?? 'conta não encontrada';
    balance = prefs.getInt('balance') ?? 0;
  }
}

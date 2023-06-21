import 'package:digibank/app/modules/pix/models/favorits_accounts.dart';
import 'package:digibank/app/modules/pix/services/pix_service.dart';
import 'package:mobx/mobx.dart';

part 'pix_store.g.dart';

class PixStore = _PixStoreBase with _$PixStore;

abstract class _PixStoreBase with Store {
  final PixService pixService;
  _PixStoreBase(this.pixService);

  @observable
  List<FavoritsAccounts> favorits = [];

  @action
  onFindFavorits() async {
    favorits = await pixService.onFindFavorits();
    print(favorits);
  }
}

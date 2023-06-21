import 'package:digibank/app/modules/pix/models/favorits_accounts.dart';
import 'package:digibank/app/modules/pix/models/transaction_history.dart';
import 'package:digibank/app/modules/pix/repositories/pix_repository.dart';

class PixService {
  final PixRepository _repository;

  PixService(this._repository);

  Future<List<TransactionHistory>> onFindHistory(int id) async {
    try {
      List<TransactionHistory> response = await _repository.findHistory(id);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<FavoritsAccounts>> onFindFavorits() async {
    try {
      List<FavoritsAccounts> response = await _repository.index();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

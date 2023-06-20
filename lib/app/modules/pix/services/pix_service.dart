import 'package:digibank/app/modules/pix/models/transaction_history.dart';
import 'package:digibank/app/modules/pix/repositories/pix_repository.dart';

class PixService {
  final PixRepository _repository;

  PixService(this._repository);

  Future<TransactionHistory> onFindHistory(int id) async {
    try {
      TransactionHistory response = await _repository.findHistory(id);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}

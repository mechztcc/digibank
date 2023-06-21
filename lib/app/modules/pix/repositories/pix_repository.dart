import 'dart:convert';

import 'package:digibank/app/modules/pix/models/favorits_accounts.dart';
import 'package:digibank/app/modules/pix/models/transaction_history.dart';
import 'package:dio/dio.dart';

class PixRepository {
  final Dio _dio = Dio();
  final String _api = 'http://localhost:3000/pix';
  final String _apiAccount = 'http://localhost:3000/account';

  Future<List<TransactionHistory>> findHistory(int id) async {
    try {
      Response response = await _dio.post('$_api/history', data: {'userId': id});

      List<TransactionHistory> history =
          response.data.map<TransactionHistory>((e) {
        return TransactionHistory.fromMap(e);
      }).toList();

      return history;
    } on DioError catch (err) {
      if (err.response?.data != null) {
        throw Exception('${err.response?.data['message']}');
      }
      if (err.type == DioErrorType.unknown) {
        throw Exception('Algo ocorreu de errado durante a operação.');
      }
      rethrow;
    }
  }

  Future<List<FavoritsAccounts>> index() async {
    try {
      Response response = await _dio.get(_apiAccount);

      List<FavoritsAccounts> favorits =
          response.data.map<FavoritsAccounts>((e) {
        return FavoritsAccounts.fromMap(e);
      }).toList();

      return favorits;
    } on DioError catch (err) {
      if (err.response?.data != null) {
        throw Exception('${err.response?.data['message']}');
      }
      if (err.type == DioErrorType.unknown) {
        throw Exception('Algo ocorreu de errado durante a operação.');
      }
      rethrow;
    }
  }
}

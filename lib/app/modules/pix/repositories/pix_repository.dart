import 'dart:convert';

import 'package:digibank/app/modules/pix/models/transaction_history.dart';
import 'package:dio/dio.dart';

class PixRepository {
  final Dio _dio = Dio();
  final String api = 'http://localhost:3000/pix';

  Future<List<TransactionHistory>> findHistory(int id) async {
    try {
      Response response = await _dio.post('$api/history', data: {'userId': id});

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
}

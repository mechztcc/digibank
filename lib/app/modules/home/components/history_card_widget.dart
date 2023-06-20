import 'package:digibank/app/modules/home/store/home-store_store.dart';
import 'package:digibank/app/modules/pix/models/transaction_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HistoryCardWidget extends StatelessWidget {
  final String title;
  final TransactionHistory history;
  HistoryCardWidget(
      {Key? key, this.title = "HistoryCardWidget", required this.history})
      : super(key: key);

  HomeStore store = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  store.accountCode == history.receiverAccountCode
                      ? Icons.arrow_downward
                      : Icons.arrow_upward,
                  color: store.accountCode == history.receiverAccountCode
                      ? Colors.green
                      : Colors.red,
                ),
                const Text(
                  'USD',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${history.value}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

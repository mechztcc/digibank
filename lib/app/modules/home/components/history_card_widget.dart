import 'package:flutter/material.dart';

class HistoryCardWidget extends StatelessWidget {
  final String title;
  const HistoryCardWidget({Key? key, this.title = "HistoryCardWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.attach_money,
                color: Colors.deepPurple,
              ),
              Text(
                'USD',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          const Text(
            'R\$ 300,00',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

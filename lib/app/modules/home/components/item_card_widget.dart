import 'package:flutter/material.dart';

class ItemCardWidget extends StatelessWidget {
  final String title;
  const ItemCardWidget({Key? key, this.title = "ItemCardWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurpleAccent,
        ),
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.security_sharp,
              color: Colors.white,
            ),
            Text(
              'Seguro carro',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

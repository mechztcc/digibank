import 'package:flutter/material.dart';

class AppbarWidget extends AppBar {
  AppbarWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.abc),
    );
  }
}

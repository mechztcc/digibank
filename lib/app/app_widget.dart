import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}

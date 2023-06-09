import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomBarWidget extends StatelessWidget {
  final String title;
  final int index;
  const BottomBarWidget({
    Key? key,
    this.title = "BottomBarWidget",
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == 0) {
          Modular.to.navigate('/home');
        }

        if (index == 1) {
          Modular.to.navigate('/cards/');
        }

        if (index == 2) {
          Modular.to.navigate('/pix/create');
        }

        if (index == 3) {
          Modular.to.navigate('/invest');
        }

        if (index == 4) {
          Modular.to.navigate('/configuration/');
        }
      },
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: 'Cartões',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pix),
          label: 'Área pix',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.data_exploration_outlined),
          label: 'Investimento',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configurações',
        ),
      ],
    );
  }
}

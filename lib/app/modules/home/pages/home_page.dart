import 'package:digibank/app/core/components/credit_card_widget.dart';
import 'package:digibank/app/modules/home/components/history_card_widget.dart';
import 'package:digibank/app/modules/home/components/item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: FractionallySizedBox(
          heightFactor: 0.8,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ),
        title: Column(
          children: const [
            Text(
              'Oi, Alberto',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Bem vindo',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 2) {
            Modular.to.navigate('/pix/create');
          }
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Meus cartões',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    'Minha conta',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.3,
              child: const CreditCardWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Divider(),
                  Row(
                    children: const [
                      Text(
                        'Histórico de transações',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                  HistoryCardWidget(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Divider(),
                  Row(
                    children: const [
                      Text(
                        'Um presente pra você',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemCardWidget(
                    title: 'Seguro carro',
                    icon: Icon(
                      Icons.car_crash_outlined,
                      color: Colors.white,
                    ),
                  ),
                  ItemCardWidget(
                    title: 'Seguro vida',
                    icon: Icon(
                      Icons.local_hospital_outlined,
                      color: Colors.white,
                    ),
                  ),
                  ItemCardWidget(
                    title: 'Seguro celular',
                    icon: Icon(
                      Icons.smartphone_outlined,
                      color: Colors.white,
                    ),
                  ),
                  ItemCardWidget(
                    title: 'Seguro casa',
                    icon: Icon(
                      Icons.house,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:digibank/app/core/components/credit_card_widget.dart';
import 'package:digibank/app/modules/auth/models/AuthModel.dart';
import 'package:digibank/app/modules/home/components/history_card_widget.dart';
import 'package:digibank/app/modules/home/components/item_card_widget.dart';
import 'package:digibank/app/modules/home/store/home-store_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final store = Modular.get<HomeStore>();

  @override
  void initState() {
    store.getPrefs();
    store.onFindHistory();
    super.initState();
  }

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
        title: Observer(
          builder: (_) => Column(
            children: [
              Text(
                store.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const Text(
                'Bem vindo',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBarWidget(index: 0),
      body: Observer(
        builder: (_) => SingleChildScrollView(
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
              CreditCardWidget(),
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
                child: ListView.builder(
                  itemCount: store.length,
                  itemBuilder: (_, index) => HistoryCardWidget(
                    history: store.history[index],
                  ),
                  scrollDirection: Axis.horizontal,
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
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const ItemCardWidget(
                        title: 'Seguro carro',
                        icon: Icon(
                          Icons.car_crash_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ItemCardWidget(
                        title: 'Seguro vida',
                        icon: Icon(
                          Icons.local_hospital_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ItemCardWidget(
                        title: 'Seguro celular',
                        icon: Icon(
                          Icons.smartphone_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ItemCardWidget(
                        title: 'Seguro casa',
                        icon: Icon(
                          Icons.house,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).animate().fade(duration: const Duration(milliseconds: 600)),
        ),
      ),
    );
  }
}

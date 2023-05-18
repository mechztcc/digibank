import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:digibank/app/modules/home/components/item_card_widget.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatefulWidget {
  final String title;
  const MyCardsPage({Key? key, this.title = 'MyCardsPage'}) : super(key: key);
  @override
  MyCardsPageState createState() => MyCardsPageState();
}

class MyCardsPageState extends State<MyCardsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: const BottomBarWidget(index: 1),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'Meus cartões',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'Últimas transações',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        'Microsoft Store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'R\$ 3.500,00',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:digibank/app/modules/home/components/item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InvestAreaPage extends StatefulWidget {
  bool isHideContent = false;

  final String title;
  InvestAreaPage({Key? key, this.title = 'Investimentos'}) : super(key: key);
  @override
  InvestAreaPageState createState() => InvestAreaPageState();

  onChangeVisibility() {
    isHideContent = !isHideContent;
  }
}

class InvestAreaPageState extends State<InvestAreaPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(index: 3),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Minha carteira',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.onChangeVisibility();
                        });
                      },
                      icon: Icon(
                        widget.isHideContent
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.data_saver_off_outlined,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      '100% renda fixa',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.isHideContent ? 'R\$ 2.000,00' : '*******')
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  children: const [
                    Text(
                      'Recomendações de carteiras',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'TechInvest Ativos',
                            icon: Icon(
                              Icons.data_saver_off_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Carteira de ações',
                            icon: Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Carteira de fundos',
                            icon: Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'TechInvest CTA',
                            icon: Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  children: const [
                    Text(
                      'Produtos',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Renda fixa',
                            icon: Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Tesouro direto',
                            icon: Icon(
                              Icons.wallet_travel,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Fundos',
                            icon: Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: const ItemCardWidget(
                            title: 'Previdencia',
                            icon: Icon(
                              Icons.grass,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ).animate().fade(duration: const Duration(milliseconds: 600)),
    );
  }
}

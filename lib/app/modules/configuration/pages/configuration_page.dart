import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigurationPage extends StatefulWidget {
  final String title;
  const ConfigurationPage({Key? key, this.title = 'Configurar'})
      : super(key: key);
  @override
  ConfigurationPageState createState() => ConfigurationPageState();
}

class ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(index: 4),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: const [
                    Text(
                      'Serviços',
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
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.credit_card,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Configurar cartão'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Configurar conta'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.pix,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Configurar chaves Pix'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.dashboard,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Configurar perfil de investimentos'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Editar dados do Perfil'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Notificações'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.help_center,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Central de ajuda'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Modular.to.navigate('/');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.exit_to_app,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Text('Sair'),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.deepPurple,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animate().fade(duration: const Duration(milliseconds: 600)),
    );
  }
}

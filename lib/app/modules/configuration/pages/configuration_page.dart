import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: const BottomBarWidget(index: 4),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.1,
              ),
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
              Row(
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
              Row(
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
              Row(
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
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}

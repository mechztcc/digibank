import 'package:digibank/app/core/components/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PixPage extends StatefulWidget {
  final String title;
  const PixPage({Key? key, this.title = 'PixPage'}) : super(key: key);
  @override
  PixPageState createState() => PixPageState();
}

class PixPageState extends State<PixPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomBarWidget(index: 2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Minha Área Pix',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Digite a chave Pix',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Celular, CPF, CNPJ, E-mail'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Buscar na agenda'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Continuar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Modular.to.navigate('/home');
            },
            child: const Text(
              'Voltar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ).animate().fade(duration: const Duration(milliseconds: 600)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/create-account.png')),
            const Text(
              'Acessar minha conta',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Por favor, preencha o formulário abaixo para acessar usua conta.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const FractionallySizedBox(
              widthFactor: 0.9,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CPF',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FractionallySizedBox(
              widthFactor: 0.9,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                      'Avançar',
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
            FractionallySizedBox(
              widthFactor: 0.9,
              child: TextButton(
                onPressed: () {
                  Modular.to.navigate('/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Voltar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

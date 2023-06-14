import 'package:digibank/app/modules/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  final String title;

  final AuthService authService = Modular.get();

  final _documentEC = TextEditingController();
  final _passwordEC = TextEditingController();

  LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final formKey = GlobalKey<FormState>();

    validateForm() async {
      final isValid = formKey.currentState?.validate();

      if (isValid ?? false) {
        try {
          String document = widget._documentEC.text;
          String password = widget._passwordEC.text;
        } catch (e) {}
      }
    }

    return Scaffold(

      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                      image: AssetImage('assets/images/create-account.png')),
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
                  TextFormField(
                    controller: widget._documentEC,
                    obscureText: true,
                    validator: Validatorless.required('CPF é obrigatório.'),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CPF',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: widget._passwordEC,
                    obscureText: true,
                    validator:
                        Validatorless.required('Senha é um obrigatório.'),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
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
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Modular.to.navigate('/home');
                    },
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
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
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
                  )
                ],
              ),
            ),
          ),
        ),
      ).animate().fade(duration: const Duration(milliseconds: 600))
    );
  }
}

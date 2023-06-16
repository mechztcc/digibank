import 'package:digibank/app/modules/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
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
                SizedBox(
                  height: size.height * 0.3,
                  child: const Image(
                      image: AssetImage('assets/images/bank.gif')),
                ),
                Text(
                  'Acessar minha conta',
                  style: GoogleFonts.rajdhani(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Por favor, preencha o formulário abaixo para acessar usua conta.',
                    style: GoogleFonts.rajdhani(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                  validator: Validatorless.required('Senha é um obrigatório.'),
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
                    children: [
                      Text(
                        'Esqueceu a senha?',
                        style: GoogleFonts.rajdhani(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Modular.to.navigate('/home');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Avançar',
                          style: GoogleFonts.rajdhani(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Modular.to.navigate('/');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Voltar',
                          style: GoogleFonts.rajdhani(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ).animate().fade(duration: const Duration(milliseconds: 600)));
  }
}

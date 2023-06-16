import 'package:digibank/app/core/utils/custo_snackbar.dart';
import 'package:digibank/app/modules/auth/models/UserModel.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';
import 'package:digibank/app/modules/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:validatorless/validatorless.dart';

class CreateAccountPage extends StatefulWidget {
  final String title;

  final AuthService authService = Modular.get();

  final _nameEC = TextEditingController();
  final _documentEC = TextEditingController();
  final _passwordEC = TextEditingController();

  CreateAccountPage({
    Key? key,
    this.title = 'CreateAccountPage',
  }) : super(key: key);
  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final formKey = GlobalKey<FormState>();

    validateForm() async {
      final isValid = formKey.currentState?.validate();

      if (isValid ?? false) {
        try {
          String name = widget._nameEC.text;
          String document = widget._documentEC.text;
          String password = widget._passwordEC.text;

          UserModel user = await widget.authService.createAccount(
            name,
            document,
            password,
          );

          // ignore: use_build_context_synchronously
          CustomSnackbar(
            context: context,
            message: 'Conta criada com sucesso!',
          ).success();

          Modular.to.navigate('/auth/login');
        } catch (e) {
          final dynamic err = e;

          CustomSnackbar(
            context: context,
            message: '${err}',
          ).warning();
        }
      }
    }

    return Scaffold(

      body: Center(
        child: SizedBox(
          width: size.width * 0.8,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    child: const Image(
                        image: AssetImage('assets/images/create-account.gif')),
                  ),
                  Text(
                    'Criar nova conta',
                    style: GoogleFonts.rajdhani(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Por favor, preencha o formulário abaixo para criar uma nova conta.',
                      style: GoogleFonts.rajdhani(fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    controller: widget._nameEC,
                    validator: Validatorless.multiple([
                      Validatorless.min(
                          5, 'Informe o primeiro e segundo nome.'),
                      Validatorless.required('Nome é obrigatório.')
                    ]),
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome completo',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    controller: widget._documentEC,
                    validator: Validatorless.multiple([
                      Validatorless.min(11, 'CPF inválido.'),
                      Validatorless.required('CPF é obrigatório.')
                    ]),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CPF',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    controller: widget._passwordEC,
                    obscureText: true,
                    validator: Validatorless.multiple([
                      Validatorless.min(
                          8, 'A senha deve possuir no mínimo 8 caracteres.'),
                      Validatorless.required('Password é obrigatório.')
                    ]),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
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
                        validateForm();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Avançar',
                            style: GoogleFonts.rajdhani(
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
                      Modular.to.navigate('/');
                    },
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Voltar',
                          style: GoogleFonts.rajdhani(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ).animate().fade(duration: const Duration(milliseconds: 600)),
    );
  }
}

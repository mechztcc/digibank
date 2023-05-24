import 'package:digibank/app/core/utils/custo_snackbar.dart';
import 'package:digibank/app/modules/auth/models/UserModel.dart';
import 'package:digibank/app/modules/auth/repositories/auth_repository.dart';
import 'package:digibank/app/modules/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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

    _validateForm() async {
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
      appBar: AppBar(
        actions: const [],
      ),
      body: Center(
        child: SizedBox(
          width: size.width * 0.8,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/create-account.png'),
                  ),
                  const Text(
                    'Criar nova conta',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Por favor, preencha o formulário abaixo para criar uma nova conta.',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
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
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                      ),
                    ),
                    onPressed: () {
                      _validateForm();
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
      ),
    );
  }
}

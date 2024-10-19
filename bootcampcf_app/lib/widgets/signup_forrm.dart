import 'package:bootcampcf_app/widgets/email_imput.dart';
import 'package:bootcampcf_app/widgets/name_imput.dart';
import 'package:bootcampcf_app/widgets/password_imput.dart';
import 'package:bootcampcf_app/widgets/register_button.dart';
import 'package:bootcampcf_app/widgets/terms_check.dart';
import 'package:flutter/material.dart';

class SignupForrm extends StatefulWidget {
  const SignupForrm({super.key});

  @override
  State<StatefulWidget> createState() => _SignupForrmState();
}

class _SignupForrmState extends State<SignupForrm> {
  final _formKey = GlobalKey<FormState>();

  final _nameInputController = TextEditingController();
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  @override
  void dispose() {
    _nameInputController.dispose();
    _emailInputController.dispose();
    _passwordInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                'lib/assets/img/test.jpg',
                width: 200,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            const Text('Nombre'),
            NameImput(
              controller: _nameInputController,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Email'),
            EmailImput(
              controller: _emailInputController,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Password'),
            PasswordImput(
              controller: _passwordInputController,
            ),
            const SizedBox(
              height: 10,
            ),
            const TermsCheck(),
            const SizedBox(
              height: 24,
            ),
            RegisterButton(
              formKey: _formKey,
              nameInputController: _nameInputController,
            ),
          ],
        ));
  }
}

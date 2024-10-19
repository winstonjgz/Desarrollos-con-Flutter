import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    required this.formKey,
    required this.nameInputController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameInputController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        child: const Text('Registrarse'),
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                //mensaje que se desaparece en un tiempo
                content: Text('Bienvenido! ${nameInputController.value.text}'),
              ),
            );
          }
        },
      ),
    );
  }
}

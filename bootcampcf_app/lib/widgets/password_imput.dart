import 'package:flutter/material.dart';

class PasswordImput extends StatelessWidget {
  const PasswordImput({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextFormField(
          controller: controller,
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.key),
            prefixIconColor: Color(0xFFB08ED2),
            border: OutlineInputBorder(),
            hintText: 'password',
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, ingrese un password!';
            }
            if (!RegExp(
                    r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$")
                .hasMatch(value)) {
              return 'La contraseña debe contener al menos 8 caracteres, una mayúscula, una minúscula, un número y un carácter especial.';
            }
            return null;
          },
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.visibility_outlined)),
        )
      ],
    );
  }
}

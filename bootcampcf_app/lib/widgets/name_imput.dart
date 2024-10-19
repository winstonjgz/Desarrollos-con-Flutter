import 'package:flutter/material.dart';

class NameImput extends StatelessWidget {
  const NameImput(
      {required this.controller, //required this.onNameChanged,
      super.key});

  final TextEditingController controller;
  //final void Function(String) onNameChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
        prefixIconColor: Color(0xFFB08ED2),
        border: OutlineInputBorder(),
        hintText: 'John Connor',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFB08ED2),
            width: 2,
          ),
        ),
      ),
      //onChanged: onNameChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingrese un nombre valido!';
        }
        return null;
      },
    );
  }
}

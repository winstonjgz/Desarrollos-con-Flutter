import 'package:flutter/material.dart';

class TermsCheck extends StatelessWidget {
  const TermsCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.grey,
          splashRadius: 0,
          fillColor: WidgetStateProperty.resolveWith((states) => Colors.white),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: WidgetStateBorderSide.resolveWith(
            (state) => const BorderSide(color: Colors.blueGrey),
          ),
          value: false,
          onChanged: (bool? value) {},
        ),
        const SizedBox(
          width: 4,
        ),
        const Text("Estoy de acuerdo con los terminos y condiciones")
      ],
    );
  }
}

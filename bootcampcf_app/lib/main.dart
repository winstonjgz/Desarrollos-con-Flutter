import 'package:bootcampcf_app/widgets/signup_forrm.dart';
import 'package:flutter/material.dart';

//const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Primera App',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: SingleChildScrollView(child: SignupForrm()),
          ),
        ));
  }
}

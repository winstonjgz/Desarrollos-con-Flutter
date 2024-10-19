import 'package:flutter/material.dart';

//const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Primera App',
        theme: ThemeData.light(
            //scaffoldBackgroundColor: darkBlue,
            ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          /* body: Center(
            child: MyWidget(),
          ), */
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Que estas buscando?',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Que estas buscando en formulario?',
                ))
              ],
            ),
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

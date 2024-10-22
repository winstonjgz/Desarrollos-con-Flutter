import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 16 / 9, //Se indica la dimension Ancho / Alto
        ),
        children: Colors.accents
            .map(
              (e) => Container(
                height: 40,
                color: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

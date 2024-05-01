import 'package:flutter/material.dart';

class grandTitre extends StatelessWidget {
  const grandTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "RAPPORT DE DEVELOPPEMENT DURABLE",
          style: TextStyle(
              height: 3,
              fontWeight: FontWeight.bold,
              fontSize: 70,
              color: Color.fromARGB(255, 255, 255, 254)),
        ),
      ],
    );
  }
}

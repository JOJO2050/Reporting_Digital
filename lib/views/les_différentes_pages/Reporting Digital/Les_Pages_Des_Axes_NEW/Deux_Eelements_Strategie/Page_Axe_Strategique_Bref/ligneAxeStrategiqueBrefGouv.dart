import 'package:flutter/material.dart';

import 'CouleurBoutonGouv.dart';

class lignesTextAxeStrategiqueBrefGouv extends StatelessWidget {
  const lignesTextAxeStrategiqueBrefGouv({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Container(
          child: Center(
            child: Image.asset(
              'assets/icons/doigt1.png',
              width: 35,
              color: Color.fromARGB(255, 224, 203, 9),
            ),
          ),
        ),
        SizedBox(child: buttonaCouleurGouv()),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'CouleurBoutonPreser.dart';

class lignesTextAxeStrategiqueBrefEnv extends StatelessWidget {
  const lignesTextAxeStrategiqueBrefEnv({super.key});

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
              color: Color.fromARGB(255, 105, 238, 88),
            ),
          ),
        ),
        SizedBox(child: BouttonCouleurPreserv()),
      ],
    );
  }
}

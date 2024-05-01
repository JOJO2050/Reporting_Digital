import 'package:flutter/material.dart';

import 'CouleurBoutonEmploi.dart';

class lignesTextAxeStrategiqueBrefEmploie extends StatelessWidget {
  const lignesTextAxeStrategiqueBrefEmploie({super.key});

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
              color: Color.fromARGB(255, 96, 158, 250),
            ),
          ),
        ),
        SizedBox(child: BouttonCouleurEmploiCond()),
      ],
    );
  }
}

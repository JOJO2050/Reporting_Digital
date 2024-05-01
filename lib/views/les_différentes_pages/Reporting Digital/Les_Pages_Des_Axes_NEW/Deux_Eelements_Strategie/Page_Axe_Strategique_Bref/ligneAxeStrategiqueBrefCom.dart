import 'package:flutter/material.dart';

import 'CouleurBoutonComm.dart';

class lignesTextAxeStrategiqueBrefComm extends StatelessWidget {
  const lignesTextAxeStrategiqueBrefComm({super.key});

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
              color: Color.fromARGB(255, 247, 164, 70),
            ),
          ),
        ),
        SizedBox(child: BouttonCouleurCommInov()),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class logoTexteAxeStrategiqueBrefCom extends StatelessWidget {
  const logoTexteAxeStrategiqueBrefCom({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 110),
        _buildIconCircle(
          'assets/icons/Monde.png',
          "COMMUNAUTE ET INNOVATION SOCIETAL",
          "Enjeu 10", // Texte enjeu pour le cercle
        ),
      ],
    );
  }

  Widget _buildIconCircle(String imagePath, String text, String enjeuTexte) {
    return Column(
      children: [
        Text(
          enjeuTexte,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 247, 164, 70),
          ),
        ),
        SizedBox(height: 4),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 129, 125, 125),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              width: 60,
              color: Color.fromARGB(255, 247, 164, 70),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

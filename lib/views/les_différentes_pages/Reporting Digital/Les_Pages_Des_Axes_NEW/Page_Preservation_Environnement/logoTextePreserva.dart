import 'package:flutter/material.dart';

class logoTextePreserv extends StatelessWidget {
  const logoTextePreserv({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 200),
        _buildIconCircle(
          'assets/icons/metéo.png',
          "CHANGEMENT CLIMATIQUES ET\nDEFORESTATION",
        ),
        SizedBox(width: 120),
        _buildIconCircle(
          'assets/icons/vague.png',
          "GESTION ET\nTRAITEMENT DE L'EAU",
        ),
        SizedBox(width: 200),
        _buildIconCircle(
          'assets/icons/poubelle.png',
          "GESTION\nDES DECHETS",
        ),
      ],
    );
  }

  Widget _buildIconCircle(String imagePath, String text) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 116, 114, 114),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              width: 50,
              color: Color.fromARGB(255, 105, 238, 88),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

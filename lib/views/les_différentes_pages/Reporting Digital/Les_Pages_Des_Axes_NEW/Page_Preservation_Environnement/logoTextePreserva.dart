import 'package:flutter/material.dart';

class logoTextePreserv extends StatelessWidget {
  const logoTextePreserv({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 155),
        _buildIconCircle(
          'assets/icons/metéo.png',
          "CHANGEMENT CLIMATIQUES ET\nDEFORESTATION",
          "Enjeu 7", // Texte enjeu pour le premier cercle
        ),
        SizedBox(width: 120),
        _buildIconCircle(
          'assets/icons/vague.png',
          "GESTION ET\nTRAITEMENT DE L'EAU",
          "Enjeu 8", // Texte enjeu pour le deuxième cercle
        ),
        SizedBox(width: 200),
        _buildIconCircle(
          'assets/icons/poubelle.png',
          "GESTION\nDES DECHETS",
          "Enjeu 9", // Texte enjeu pour le troisième cercle
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
            color: Color.fromARGB(255, 24, 68, 18),
          ),
        ),
        SizedBox(height: 4),
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
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

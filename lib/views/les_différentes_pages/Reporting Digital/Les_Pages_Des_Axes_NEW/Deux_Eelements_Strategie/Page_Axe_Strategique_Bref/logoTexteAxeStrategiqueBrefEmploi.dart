import 'package:flutter/material.dart';

class logoTexteAxeStrategiqueBrefEmploie extends StatelessWidget {
  const logoTexteAxeStrategiqueBrefEmploie({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 245),
        _buildIconeTexte(
          enjeu: "Enjeu 4",
          image: 'assets/icons/personne.png',
          texte: "CONDITION DE\n TRAVAILL",
        ),
        SizedBox(width: 135),
        _buildIconeTexte(
          enjeu: "Enjeu 5",
          image: 'assets/icons/justice.png',
          texte: "ÉGALITÉ DE TRAITEMENT DE TOUS\nLES TRAVAILLEURS",
        ),
        SizedBox(width: 50),
        _buildIconeTexte(
          enjeu: "Enjeu 6",
          image: 'assets/icons/maison.png',
          texte: "AMÉLIORATION DU CADRE DE VIE\nDES SALARIÉS",
        ),
      ],
    );
  }

  Widget _buildIconeTexte({
    required String image,
    required String texte,
    required String enjeu,
  }) {
    return Column(
      children: [
        Text(
          enjeu,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 96, 158, 250),
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(
                255, 116, 114, 114), // Couleur de fond grise
          ),
          padding: EdgeInsets.all(10),
          child: Image.asset(
            image,
            width: 60,
            color: Color.fromARGB(255, 96, 158, 250),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          texte,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

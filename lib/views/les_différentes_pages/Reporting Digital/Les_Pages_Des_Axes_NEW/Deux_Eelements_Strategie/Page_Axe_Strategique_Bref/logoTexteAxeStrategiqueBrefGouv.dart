import 'package:flutter/material.dart';

class logoTexteAxeStrategiqueBrefGouv extends StatelessWidget {
  const logoTexteAxeStrategiqueBrefGouv({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 130),
        _buildIconeTexte(
          image: 'assets/icons/justice.png',
          texte1: "GOUVERNANCE DÉVELOPPEMENT DURABLE",
          texte2: "ET INTÉGRATION AUX DÉCISIONS STRATÉGIQUES",
          texte3: "",
        ),
        SizedBox(width: 60),
        _buildIconeTexte(
          image: 'assets/icons/busines.png',
          texte1: "ÉTHIQUE DES AFFAIRES ET",
          texte2: "ACHATS RESPONSABLES",
          texte3: "",
        ),
        SizedBox(width: 60),
        _buildIconeTexte(
          image: 'assets/icons/diagramme.png',
          texte1: "INTÉGRATION DES NOUVELLES ATTENTES",
          texte2: "DÉVELOPPEMENT DURABLE DES CLIENTS ",
          texte3: "ET CONSOMMATEURS",
        ),
      ],
    );
  }

  Widget _buildIconeTexte({
    required String image,
    required String texte1,
    required String texte2,
    required String texte3,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 116, 114, 114), // Couleur de fond grise
          ),
          padding: EdgeInsets.all(10),
          child: Image.asset(
            image,
            width: 60,
            color: Color.fromARGB(255, 224, 203, 9),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          texte1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          texte2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          texte3,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

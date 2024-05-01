import 'package:flutter/material.dart';

class logoTextePresentation extends StatelessWidget {
  const logoTextePresentation({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 370),
        _buildIconeTexte(
          image: 'assets/images/salut.png',
          texte1: "33 000",
          texte2: "Collaborateurs",
          texte3: "",
        ),
        SizedBox(width: 140),
        _buildIconeTexte(
          image: 'assets/images/revenu.png',
          texte1: "521 milliards",
          texte2: "de chiffre d'affaire",
          texte3: "",
        ),
        SizedBox(width: 150),
        _buildIconeTexte(
          image: 'assets/images/monde.png',
          texte1: "11 fililaes",
          texte2: "Groupe SIFCA ",
          texte3: "",
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
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        Text(
          texte2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        Text(
          texte3,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}

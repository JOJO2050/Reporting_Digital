import 'package:flutter/material.dart';

class lignesTextArbreStrategique extends StatefulWidget {
  const lignesTextArbreStrategique({Key? key}) : super(key: key);

  @override
  State<lignesTextArbreStrategique> createState() =>
      _lignesTextArbreStrategiqueState();
}

class _lignesTextArbreStrategiqueState
    extends State<lignesTextArbreStrategique> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 260),
            Text(
              "LE DEVELOPPEMENT DURABLE AU CŒUR DE LA STRATEGIE DU GROUPE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 104, 69, 5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            SizedBox(width: 160),
            Text(
              "Le Groupe SIFCA inscrit le développement durable au cœur de sa stratégie et de ses opérations. A travers 4 axes, le Groupe met en place des initiatives socio-",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 160),
            Text(
              "économiques qui visent à améliorer les conditions de vie et de travail de ses collaborateurs, des populations environnantes et à préserver l’Environnement.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 160),
            Text(
              "Traduite par 10 ENJEUX pour une agriculture durable permettant de répondre aux attentes de nos parties prenantes.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = false;
            });
          },
          child: Stack(
            children: [
              Image.asset(
                'assets/images/strategieAbre.jpg',
                width:
                    isHovered ? 650 : 550, // Changer la largeur lors du survol
                height:
                    isHovered ? 650 : 550, // Changer la hauteur lors du survol
              ),
            ],
          ),
        ),
      ],
    );
  }
}

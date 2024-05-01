import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTextPreserv extends StatelessWidget {
  const lignesTextPreserv({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 70),
            Text("PRESERVATION DE LA BIODIVERSITE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "Le Groupe SIFCA est engagé depuis plus de 14 années dans la préservation de l’Environnement. Cet engagement a été renforcé en 2017, par la mise en place",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "d’une politique «zéro déforestation». Une politique qui matérialise les critères de préservation de la biodiversité sur nos sites et définit les dispositions à respecter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 70),
            Text("pour l’extension ou la création de nouvelles plantations.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "Nous collaborons également avec les institutions nationales. Ainsi, le Groupe SIFCA a noué plusieurs partenariats avec :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "•   le Ministère des eaux et forêts: contribution à la reconstitution du couvert forestier",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "•   la Société de Développement des forêts (SODEFOR): appui à la surveillance des forêts classées de Bamo et Kinkaine",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "•   l’ONG AMISTAD : appui au reboisement agroforestier dans nos zones d’implantation.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 70),
            Text(
                "•   l’ONG Conservation des Espèces Marines (CEM): appui à la conservation des espèces animales et végétales vivant dans des milieux marins (Grand-Bereby).",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

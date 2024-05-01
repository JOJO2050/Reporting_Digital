import 'package:flutter/material.dart';

class piedDePage1 extends StatelessWidget {
  const piedDePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Text("GOUVERNANCE ETHIQUE ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
            Text(
              "Gouvernance Développement Durable et pilotage des décisions stratégiques",
            ),
            Text(
              "Ethique des affaires et des achats responsables",
            ),
            Text(
              "Intégration des attentes Développement Durable  des clients et consommateursDécouvrir",
            )
          ],
        ),
        SizedBox(width: 200),
        Column(
          children: [
            Text("EMPLOIE ET CONDITION DE TRAVAIL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
            Text(
              "Conditions de travail",
            ),
            Text(
              "Egalité de traitement des travailleurs",
            ),
            Text(
              "Cadre de vie des salariés",
            )
          ],
        )
      ],
    );
  }
}

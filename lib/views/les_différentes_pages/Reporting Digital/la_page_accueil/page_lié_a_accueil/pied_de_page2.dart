import 'package:flutter/material.dart';

class piedDePage2 extends StatelessWidget {
  const piedDePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 110),
        Column(
          children: [
            Text("PRESERVATION DE L'ENVIRONNEMENT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
            Text(
              "Changements climatiques et déforestation",
            ),
            Text(
              "Gestion et traitement de l'eau",
            ),
            Text(
              "Gestion des déchets",
            )
          ],
        ),
        SizedBox(width: 300),
        Column(
          children: [
            Text("COMMUNAUTE ET INOVATION SOCIETALE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
            Text(
              "Inclusion sociale et développement des communautés",
            ),
            Text(
              "",
            ),
            Text(
              "",
            )
          ],
        )
      ],
    );
  }
}

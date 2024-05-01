import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTitreSousTitreEmploiCondTravail extends StatelessWidget {
  const lignesTitreSousTitreEmploiCondTravail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 150),
            Text("EDUCATION",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(width: 150),
            Text(
                "Dans le domaine de l’éducation , les 127 écoles préscolaires, primaires et secondaires du Groupe, permettent à ce jour la scolarisation de plus de 26 000 enfants parmi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 150),
            Text(
                "lesquels les enfants de nos employés, mais aussi ceux issus de nos communautés locales environnantes. Un engagement fort du Groupe contribue activement à lutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 150),
            Text(
                "contre le travail des enfants. Nous encourageons également l’Excellence en récompensant chaque année les 03 meilleurs élèves de nos établissements scolaires.",
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

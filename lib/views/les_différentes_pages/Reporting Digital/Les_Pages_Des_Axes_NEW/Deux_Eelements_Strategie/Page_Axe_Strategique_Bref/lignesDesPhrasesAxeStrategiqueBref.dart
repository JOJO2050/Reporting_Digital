import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesPhraseAxeStrategiqueBref extends StatelessWidget {
  const lignesPhraseAxeStrategiqueBref({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "Le travail collaboratif et la responsabilité de nos employés ont permis de développer des pratiques durables dans nos activités et de maintenir une",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "croissance dynamique. Le profit créé par notre entreprise est redistribué à travers l’ensemble de nos parties prenantes, tant en interne qu’en externe.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "Ainsi, la gestion financière du Groupe SIFCA, dans le respect de la bonne gouvernance, permet à nos salariés de bénéficier de rémunérations et",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "d’avantages sociaux leur permettant de maintenir le niveau de vie décent, mais aussi de réaliser des projets sociaux, afin d’améliorer le cadre de vie",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text("de nos communautés locales environnantes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "La gestion optimale des plantations villageoises à travers notre assistance technique et la gestion efficace des coûts de nos matières premières nous",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "permet de gérer et d’accompagner plus de 72 000 planteurs privés couvrant une surface totale plantée de près de 450 000 ha. L’achat de nos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 135),
            Text(
                "matières premières auprès de nos planteurs privés, leur génère des revenus constants et améliore ainsi leur niveau de vie.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        )
      ],
    );
  }
}

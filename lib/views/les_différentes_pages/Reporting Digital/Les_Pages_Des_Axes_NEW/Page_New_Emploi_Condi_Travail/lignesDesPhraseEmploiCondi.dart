import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTextEmploiCondi extends StatelessWidget {
  const lignesTextEmploiCondi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 150),
            Text(
                "L’enjeu prioritaire du Groupe SIFCA est de préserver la Santé et la Sécurité de ses 31 000 employés, des femmes et des hommes qui contribuent au quotidien à",
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
                "notre positionnement de leader. C’est pourquoi à travers un ensemble d’investissements dans le domaine du social, SIFCA offre sur ses unités agricoles intégrées, un",
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
                "cadre de vie intégrant l’accès au logement, à l’électricité et à l’eau potable, à l’éducation et à des soins de santé de qualité, aux employés et leur famille.",
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
                "De plus, 50% des employés ont des Equipements de Protection Individuelle (EPI) adaptés à leurs postes de travail.",
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

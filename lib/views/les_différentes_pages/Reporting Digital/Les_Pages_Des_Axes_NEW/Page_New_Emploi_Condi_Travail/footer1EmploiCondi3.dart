import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTitreSousTitreEmploiCondTravail2 extends StatelessWidget {
  const lignesTitreSousTitreEmploiCondTravail2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 150),
            Text("SANTE",
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
                "La santé demeurant un axe prioritaire pour notre Groupe, tous nos employés et leur famille bénéficient d’une couverture d’assurance maladie ainsi que de la disponibilité",
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
                "d’un médecin du travail. Sur chaque Unité Agricole Intégrée, SIFCA dispose de centres médico-sociaux, dispensaires, maternités, infirmeries de sections, mis à disposition",
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
                "des employés et des communautés environnantes. Plusieurs investissements ont été faits dans nos établissements de santé, en vue de moderniser les équipements et",
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
                "d’améliorer la qualité des prestations. Notons également que le Groupe SIFCA, à travers de nombreuses campagnes de sensibilisation et dépistage, marque chaque année",
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
                "son engagement dans la lutte contre le paludisme, le VIH-SIDA et les cancers.",
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

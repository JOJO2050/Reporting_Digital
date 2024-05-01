import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTextCommuInnov extends StatelessWidget {
  const lignesTextCommuInnov({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(width: 150),
            Text("INCLUSION SOCIALE ET DÉVELOPPEMENT DES COMMUNAUTÉS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 247, 164, 70)))
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
                "Le Groupe SIFCA, conscient de l’impact économique de son activité agro-industrielle, entend partager les richesses générées grâce à ses activités avec les communautés",
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
                "vivant autour de ses sites, au travers de projets socio-économiques.",
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
                "Afin d’assurer une communication régulière et un partage transparent, le Groupe SIFCA a mis en place un cadre permanent de dialogue (CPD) avec chacune des",
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
                "communautés locales. Ces CPD permettent de sélectionner et de réaliser des projets communautaires qui correspondent aux besoins des populations. Ces projets sont",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        Row(
          children: [
            SizedBox(width: 150),
            Text("répartis en deux catégories:",
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

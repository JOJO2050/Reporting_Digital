import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class footerPrsent1 extends StatelessWidget {
  const footerPrsent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 150),
            const SizedBox(height: 60),
            const Text("Le Groupe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                )),
            const SizedBox(width: 10),
            Image.asset('assets/images/groupePres.png',
                width: 50, color: Color.fromARGB(255, 2, 2, 2)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text(
                "Fondé en 1964, SIFCA est un groupe agro-industriel ivoirien spécialisé dans trois domaines porteurs de l’économie africaine que sont le palmier à huile, le sucre de",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text(
                "canne et le caoutchouc naturel. Il intervient sur toute la chaîne de production, depuis l’exploitation des plantations, la transformation des matières premières jusqu’à la",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text(
                "commercialisation de produits semi-finis et finis. Présent dans 5 pays, le Groupe compte plus de 33 000 employés, répartis dans 11 filiales dont certaines sont cotées à",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text(
                "la Bourse d’Abidjan (SAPH, PALMCI et SUCRIVOIRE). La particularité de SIFCA réside dans son caractère familial, qui met l’aspect Humain au cœur de ses priorités.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text(
                "Un principe de choix fondé sur trois valeurs (Responsabilité-Ethique-Qualité), lesquelles renvoient aux principes du développement durable auxquels SIFCA est.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 150),
            Text("fortement attaché depuis plusieurs décennies.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ))
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            const SizedBox(width: 150),
            const SizedBox(height: 60),
            const Text("Gouvernance SIFCA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                )),
            const SizedBox(width: 10),
            Image.asset('assets/images/groupePresen2.png',
                width: 50, color: Color.fromARGB(255, 2, 2, 2)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/gouvSifca.png',
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

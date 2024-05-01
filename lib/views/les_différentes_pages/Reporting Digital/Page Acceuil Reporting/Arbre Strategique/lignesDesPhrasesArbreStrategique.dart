import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTextArbreStrategique extends StatelessWidget {
  const lignesTextArbreStrategique({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 260),
            Text("LE DEVELOPPEMENT DURABLE AU CŒUR DE LA STRATEGIE DU GROUPE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 104, 69, 5)))
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
                ))
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
                ))
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
                ))
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 370),
            Image.asset(
              'assets/images/arbre.jpeg',
            ),
          ],
        ),
      ],
    );
  }
}

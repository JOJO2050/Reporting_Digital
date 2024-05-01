import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesLogoTitreCommInov2 extends StatelessWidget {
  const lignesLogoTitreCommInov2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150),
        Column(
          children: [
            Container(
              width: 50, // Largeur du conteneur du cercle
              height: 50, // Hauteur du conteneur du cercle
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Forme du conteneur : cercle
                color: Color.fromARGB(255, 255, 251, 1)
                    .withOpacity(0.8), // Couleur gris avec opacité
              ),
              child: Center(
                child: Image.asset(
                  'assets/icons/argent.png',
                  width: 35,
                  color: Color.fromARGB(255, 248, 248, 246),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 5, horizontal: 10), // Marge interne
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 206, 149, 149)
                    .withOpacity(0.2), // Couleur gris avec opacité
                borderRadius: BorderRadius.circular(15), // Bords arrondis
              ),
              child: const Text(
                "PROJETS ECONOMIQUES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

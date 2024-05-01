import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class footerCmmuInnov3 extends StatelessWidget {
  const footerCmmuInnov3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const SizedBox(width: 15),
            Column(
              children: [
                Image.asset(
                  'assets/images/condi6.png',
                  width: 400,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "  32 logements construits (instituteur,",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "infirmier, sage-femme…)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "  10 foyers polyvalents/appâtâmes ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "   67 pompes hydrauliques                ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "construites/réhabilitées)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "   02 terrains de sport réhabilités    ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 10),
            Column(
              children: [
                Image.asset(
                  'assets/images/condi7.png',
                  width: 400,
                  /*color: Color.fromARGB(255, 156, 122, 11), */
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "   02 villages électrifiés en énergie",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "solaire)                          ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 14),
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "   02 marchés construits                     ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      width: 40, // Largeur du conteneur du cercle
                      height: 40, // Hauteur du conteneur du cercle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forme du conteneur : cercle
                        color: Color.fromARGB(255, 20, 20, 20)
                            .withOpacity(0.2), // Couleur gris avec opacité
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/chapelle.png',
                          width: 25,
                          color: Color.fromARGB(255, 156, 122, 11),
                        ),
                      ),
                    ),
                    const Text(
                      "    01 morgue construite                    ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

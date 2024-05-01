import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class footerCmmuInnov extends StatelessWidget {
  const footerCmmuInnov({super.key});

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
                  'assets/images/condi1.png',
                  width: 400,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "EDUCATION               ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
                      "   16 écoles construites/réhabilitées",
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
                      "  47 salles de classe construites      ",
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
                      "    09 crèches construites               ",
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
                      "   06 cantines scolaires construites",
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
                  'assets/images/condi2.png',
                  width: 400,
                  /*color: Color.fromARGB(255, 156, 122, 11), */
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "     SANTE                              ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
                      "   03 maternités construites           ",
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
                      "   06 hôpitaux ruraux construits        ",
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
                      "    11 dispensaires/infirmeries        ",
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
                      "   18 constructions/réhabilitations",
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
                      "   de centre de santé",
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

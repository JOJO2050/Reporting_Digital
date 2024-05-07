import 'package:flutter/material.dart';

class lignesTextFeuile extends StatefulWidget {
  const lignesTextFeuile({Key? key}) : super(key: key);

  @override
  State<lignesTextFeuile> createState() => _lignesTextFeuileState();
}

class _lignesTextFeuileState extends State<lignesTextFeuile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 500),
            Text(
              "GOUVERNANCE ET STRATEGIE DD",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 104, 69, 5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // const Row(
        //   children: [
        //     SizedBox(width: 160),
        //     Text(
        //       "Le Groupe SIFCA inscrit le développement durable au cœur de sa stratégie et de ses opérations. A travers 4 axes, le Groupe met en place des initiatives socio-",
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 14,
        //       ),
        //     ),
        //   ],
        // ),
        /* const Row(
          children: [
            SizedBox(width: 160),
            Text(
              "économiques qui visent à améliorer les conditions de vie et de travail de ses collaborateurs, des populations environnantes et à préserver l’Environnement.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ), */
        /* const Row(
          children: [
            SizedBox(width: 160),
            Text(
              "Traduite par 10 ENJEUX pour une agriculture durable permettant de répondre aux attentes de nos parties prenantes.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ), */
        const SizedBox(height: 20),

        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Image.asset(
                    'assets/images/gouvernance-strategie-dd.jpg',
                  ),
                );
              },
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.pressed)) {
                // Couleur lorsque le bouton est cliqué
                return Color.fromARGB(255, 236, 106, 55);
                ;
              } else if (states.contains(MaterialState.hovered)) {
                // Couleur lorsque le bouton est survolé
                return Color.fromARGB(255, 14, 13, 114);
              }
              // Couleur par défaut
              return Color.fromARGB(255, 69, 70, 69);
            }),
          ),
          child: Text(
            "Voir la Feuille de route",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

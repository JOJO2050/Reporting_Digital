import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'contenuAccueil.dart';

class traductionLangue extends StatelessWidget {
  const traductionLangue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icone Traduction Français-----------
        InkWell(
            onTap: (() {
              launch(lienFacebook);
            }),
            child: Image.asset(
              'assets/icons/fr.png',
              width: 30,
            )),
        //Code de l'Icone Traduction Français ---------
        const SizedBox(width: 10),

        // Icone Traduction Anglaise-----------
        InkWell(
            onTap: (() {
              launch(lienTwitter);
            }),
            child: Image.asset(
              'assets/icons/new.png',
              width: 25,
            )),
        //Code de l'Icone Traduction Anglaise ---------
      ],
    );
  }
}

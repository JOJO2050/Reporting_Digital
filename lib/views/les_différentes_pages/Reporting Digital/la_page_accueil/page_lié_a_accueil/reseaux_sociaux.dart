import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/la_page_accueil/page_li%C3%A9_a_accueil/contenuAccueil.dart';

import 'package:url_launcher/url_launcher.dart';

class reseauSociaux extends StatelessWidget {
  const reseauSociaux({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icone Facebook-----------
        InkWell(
            onTap: (() {
              launch(lienFacebook);
            }),
            child: Image.asset('assets/icons/facebook-icones.png',
                color: Color.fromARGB(255, 243, 239, 25))),
        //Code de l'Icone facebook ---------
        const SizedBox(width: 5),

        // Icone Twitter-----------
        InkWell(
            onTap: (() {
              launch(lienTwitter);
            }),
            child: Image.asset(
              'assets/icons/twitter.png',
              width: 30,
              color: Color.fromARGB(255, 243, 239, 25),
            )),
        //Code de l'Icone Twitter ---------
        const SizedBox(width: 5),

        // Icone linkedIn-----------
        InkWell(
            onTap: (() {
              launch(lienLinkedin);
            }),
            child: Image.asset(
              'assets/icons/linkedin.png',
              width: 25,
              color: Color.fromARGB(255, 243, 239, 25),
            )),
        //Code de l'Icone linkedIn ---------
        const SizedBox(width: 5),

        // Icone Youtube-----------
        InkWell(
            onTap: (() {
              launch(lienYoutube);
            }),
            child: Image.asset(
              'assets/icons/youtube2.png',
              width: 30,
              color: Color.fromARGB(255, 243, 239, 25),
            )),
        //Code de l'Icone Youtube ---------
        const SizedBox(width: 5),

        // Icone Instagram-----------
        InkWell(
            onTap: (() {
              launch(lienInstagram);
            }),
            child: Image.asset(
              'assets/icons/instagram.png',
              width: 30,
              color: Color.fromARGB(255, 243, 239, 25),
            )),
        const SizedBox(width: 5),

        // Icone Gmail-----------
        InkWell(
            onTap: (() {
              launch(lienYoutube);
            }),
            child: Image.asset(
              'assets/icons/gmail.png',
              width: 25,
              color: Color.fromARGB(255, 243, 239, 25),
            )),
        //Code de l'Icone Gmail ---------
      ],
    );
  }
}

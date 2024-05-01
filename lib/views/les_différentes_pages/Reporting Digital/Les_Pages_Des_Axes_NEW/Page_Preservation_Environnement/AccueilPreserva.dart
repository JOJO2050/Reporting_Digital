import 'package:flutter/material.dart';

import '../../Page Acceuil Reporting/page_lié_a_reporting_accueil/RechercheBarre.dart';
import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';
import 'firstlignePreserva.dart';
import 'footer1Preserva.dart';
import 'footer1Preserva2.dart';
import 'footer1Preserva3.dart';
import 'footer1Preserva4.dart';
import 'footer2Preserva.dart';
import 'lignePreservEnvir.dart';
import 'lignesDesPhrasesPreserva.dart';
import 'logoTextePreserva.dart';
import 'secondPreserva.dart';

class newPageAcueillePreserv extends StatefulWidget {
  const newPageAcueillePreserv({super.key});

  @override
  State<newPageAcueillePreserv> createState() => _newPageAcueillePreservState();
}

class _newPageAcueillePreservState extends State<newPageAcueillePreserv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(
                    height: 60,
                    child: firstLignePreservNew()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarre()),
                SizedBox(height: 70, child: secondLignePreservNew()),
                SizedBox(height: 2),

                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 7),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  photoFondPreserv,
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil7.jpg'),
                const Column(
                  children: [
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: LignePreventionEnvironretour()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTextePreserv()),
                    SizedBox(height: 30),
                    SizedBox(child: lignesTextPreserv()),
                    /* const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(height: 10),
            const SizedBox(child: footer1Preserv()),
            const SizedBox(height: 20),
            const SizedBox(child: footer1PreservEnv2()),
            const SizedBox(height: 20),
            const SizedBox(child: footer1PreservEnv3()),
            const SizedBox(height: 20),
            const SizedBox(child: footer1PreservEnv4()),
            const SizedBox(height: 20), */
                  ],
                ),
              ],
            ),
            const SizedBox(child: footer2Preserv()),
          ],
        ),
      ),
    );
  }
}

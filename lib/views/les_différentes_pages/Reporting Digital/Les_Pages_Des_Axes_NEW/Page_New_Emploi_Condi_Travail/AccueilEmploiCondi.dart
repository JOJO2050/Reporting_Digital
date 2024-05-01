import 'package:flutter/material.dart';

import '../../Page Acceuil Reporting/page_lié_a_reporting_accueil/RechercheBarre.dart';
import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

import 'firstligneEmploiCondi.dart';
import 'footer1EmploiCondi2.dart';
import 'footer1EmploiCondi3.dart';
import 'footer1EmploiCondi4.dart';
import 'footer2EmploiCondi.dart';
import 'ligneEmploieCond.dart';
import 'lignesDesPhraseEmploiCondi.dart';
import 'lignesTitreSousTitreEmploiCond.dart';
import 'logoTexteEmploiCondi.dart';
import 'secondEmploiCondi.dart';

class newPageAcueilleEmploiCondi extends StatefulWidget {
  const newPageAcueilleEmploiCondi({super.key});

  @override
  State<newPageAcueilleEmploiCondi> createState() =>
      _newPageAcueilleEmploiCondiState();
}

class _newPageAcueilleEmploiCondiState
    extends State<newPageAcueilleEmploiCondi> {
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
                    child: firstLigneEmploiCondiNew()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarre()),
                SizedBox(height: 70, child: secondLigneEmploiCondiNew()),
                SizedBox(height: 2),

                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 7),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  photoFondEmploiCondi,
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil6.jpg'),
                const Column(
                  children: [
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: LigneEmploieConditionretour()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTexteEmploieCondition()),
                    SizedBox(height: 50),
                    SizedBox(child: lignesTextEmploiCondi()),

                    /*  Container(
                      color: Colors.grey.shade200,
                      child: lignesTitreSousTitreEmploiCondTravail(),
                    ),
                    Container(
                        color: Colors.grey.shade200,
                        child: footer1EmploiCondi2()),
                    const SizedBox(height: 20),
                    const SizedBox(
                        child: lignesTitreSousTitreEmploiCondTravail2()),
                    const SizedBox(height: 5),
                    const SizedBox(child: footer1EmploiCondi4()),
                    const SizedBox(height: 20), */
                  ],
                ),
              ],
            ),
            const SizedBox(child: footer2EmploiCondi()),
          ],
        ),
      ),
    );
  }
}

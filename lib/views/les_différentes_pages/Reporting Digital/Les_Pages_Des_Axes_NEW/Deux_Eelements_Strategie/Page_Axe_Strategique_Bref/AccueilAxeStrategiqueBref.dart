import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefCom.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefEmploi.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefEnv.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefCom.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefEmploi.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefEnv.dart';

import '../../../Page Acceuil Reporting/page_lié_a_reporting_accueil/RechercheBarre.dart';
import '../../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';
import 'firstligneAxeStrategiqueBref.dart';

import 'footer2AxeStrategiqueBref.dart';
import 'ligneAxeStrategiqueBrefGouv.dart';

import 'logoTexteAxeStrategiqueBrefGouv.dart';

class newPageAcueilleAxeStrategiqueBref extends StatefulWidget {
  const newPageAcueilleAxeStrategiqueBref({super.key});

  @override
  State<newPageAcueilleAxeStrategiqueBref> createState() =>
      _newPageAcueilleAxeStrategiqueBrefState();
}

class _newPageAcueilleAxeStrategiqueBrefState
    extends State<newPageAcueilleAxeStrategiqueBref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Column(
              children: [
                //SizedBox(height: 20),

                SizedBox(
                    height: 60,
                    child: firstLigneAxeStrategiqueBrefNew()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarre()),
/*                 SizedBox(height: 70, child: secondLigneAxeStrategiqueBrefNew()),
 */
                SizedBox(height: 2),

                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 7),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  photoFondGouvEth,
                ),
              ],
            ),
            SizedBox(height: 10),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: lignesTextAxeStrategiqueBrefGouv()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 20),
            const SizedBox(child: logoTexteAxeStrategiqueBrefGouv()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 5),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: lignesTextAxeStrategiqueBrefEmploie()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 20),
            const SizedBox(child: logoTexteAxeStrategiqueBrefEmploie()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 5),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: lignesTextAxeStrategiqueBrefEnv()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 20),
            const SizedBox(child: logoTexteAxeStrategiqueBrefEnv()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 5),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: lignesTextAxeStrategiqueBrefComm()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 20),
            const SizedBox(child: logoTexteAxeStrategiqueBrefCom()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            SizedBox(height: 5),
            const SizedBox(height: 20),
            const SizedBox(child: footer2AxeStrategiqueBref()),
          ],
        ),
      ),
    );
  }
}

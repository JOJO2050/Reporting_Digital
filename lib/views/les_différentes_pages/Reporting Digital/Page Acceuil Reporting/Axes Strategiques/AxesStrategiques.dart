import 'package:flutter/material.dart';

import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefCom.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefEmploi.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefEnv.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/ligneAxeStrategiqueBrefGouv.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefCom.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefEmploi.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefEnv.dart';
import '../../Les_Pages_Des_Axes_NEW/Deux_Eelements_Strategie/Page_Axe_Strategique_Bref/logoTexteAxeStrategiqueBrefGouv.dart';
import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';

import 'FooterAxesStrategiques.dart';

import 'SecondLineAxesStrategiques.dart';
import 'firtsLineAxesStrategiques.dart';
import 'ligneRetourAxesStrategique.dart';

class AxesStrategiquesPage extends StatefulWidget {
  const AxesStrategiquesPage({super.key});

  @override
  State<AxesStrategiquesPage> createState() => _AxesStrategiquesPageState();
}

class _AxesStrategiquesPageState extends State<AxesStrategiquesPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(height: 60, child: firstLineAxesStrategiques()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineAxesStrategiques()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/document.png'),
                const Positioned(
                  top: -5,
                  left: 70,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Axes stratégiques",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        color: Color.fromARGB(255, 245, 201, 80),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: LigneretourAxesStrategique()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil.jpg'),
                const Column(
                  children: [
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: lignesTextAxeStrategiqueBrefGouv()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTexteAxeStrategiqueBrefGouv()),
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: lignesTextAxeStrategiqueBrefEmploie()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTexteAxeStrategiqueBrefEmploie()),
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: lignesTextAxeStrategiqueBrefEnv()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTexteAxeStrategiqueBrefEnv()),
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: lignesTextAxeStrategiqueBrefComm()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: logoTexteAxeStrategiqueBrefCom()),
                  ],
                ),
              ],
            ),
            const SizedBox(child: footerAxesStrategiques()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Page_Gouvernance_Ethique/logoTexteGouvEth.dart';

import '../../Page Acceuil Reporting/page_lié_a_reporting_accueil/RechercheBarre.dart';
import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';
import 'firstligneGouvEth.dart';

import 'footer2GouvEth.dart';
import 'ligneGouvernance.dart';
import 'lignesDesPhrases.dart';
import 'secondligneGouvEth.dart';

class newPageAcueilleGouvEth extends StatefulWidget {
  const newPageAcueilleGouvEth({super.key});

  @override
  State<newPageAcueilleGouvEth> createState() => _newPageAcueilleGouvEthState();
}

class _newPageAcueilleGouvEthState extends State<newPageAcueilleGouvEth> {
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
                    child: firstLigneGouvEthNew()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarre()),
                SizedBox(height: 70, child: secondLigneGouvEthNew()),
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
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil5.jpg'),
                const Column(
                  children: [
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(child: LigneGouvernanceretour()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 20),
                    SizedBox(child: logoTexteGouvEth()),
                    SizedBox(height: 20),
                    SizedBox(child: lignesTextGouvEth()),
                  ],
                ),
              ],
            ),
            const SizedBox(child: footer2GouvEth()),
          ],
        ),
      ),
    );
  }
}

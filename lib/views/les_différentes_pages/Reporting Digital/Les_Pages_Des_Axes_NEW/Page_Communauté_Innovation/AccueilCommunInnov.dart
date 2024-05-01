import 'package:flutter/material.dart';

import '../../Page Acceuil Reporting/page_lié_a_reporting_accueil/RechercheBarre.dart';
import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';
import 'firstligneCommunInnov.dart';

import 'footer2CommunInnov.dart';
import 'ligneCommunauté.dart';
import 'lignesDesPhraseCommunInnov.dart';

import 'secondCommunInnov.dart';

class newPageAcueilleCommuInnov extends StatefulWidget {
  const newPageAcueilleCommuInnov({super.key});

  @override
  State<newPageAcueilleCommuInnov> createState() =>
      _newPageAcueilleCommuInnovState();
}

class _newPageAcueilleCommuInnovState extends State<newPageAcueilleCommuInnov> {
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
                    child: firstLigneCommuInnovNew()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),

                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarre()),
                SizedBox(height: 70, child: secondLigneCommuInnov()),
                SizedBox(height: 2),

                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 7),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  photoFondCommuInnov,
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
                    SizedBox(child: LigneCommunauteretour()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 10),
                    SizedBox(child: lignesTextCommuInnov()),
                    /* SizedBox(child: lignesLogoTitreCommInov1()),
                    SizedBox(height: 10),
                    SizedBox(child: footerCmmuInnov()),
                    SizedBox(height: 10),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                    SizedBox(height: 30),
                    SizedBox(child: lignesLogoTitreCommInov2()),
                    SizedBox(child: footer1CommuInnov2()),
                    SizedBox(height: 30),
                    SizedBox(child: lignesLogoTitreCommInov3()),
                    SizedBox(height: 10),
                    SizedBox(height: 40),
                    const SizedBox(child: footerCmmuInnov3()), */
                  ],
                ),
              ],
            ),
            const SizedBox(child: footer2CommuInnov()),
          ],
        ),
      ),
    );
  }
}

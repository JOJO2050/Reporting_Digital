import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import '../../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';
import 'FooterPresentation.dart';
import 'LigneTextePesentation.dart';
import 'SecondLinePresentation.dart';
import 'firtsLinePresentation.dart';
import 'footerPresentation1.dart';
import 'lignePresentSifca.dart';
import 'logoTextePresentation.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 60, child: firstLinePresentation()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 10),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 60, child: SearchBarreReporting()),
                Stack(
                  children: [
                    Image.asset('assets/images/fond_accueil4.jpg'),
                    Column(
                      children: [
                        const Divider(
                            height: 2, color: Colors.black, thickness: 0.2),
                        const SizedBox(
                            height: 70, child: secondLinePresentation()),
                        const Divider(
                            height: 2, color: Colors.black, thickness: 0.2),
                        Stack(
                          children: [
                            Image.asset(
                              photoFondPresenSifca,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil.jpg'),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    const Divider(
                        height: 2, color: Colors.black, thickness: 0.2),
                    const SizedBox(child: LignePresentSifcaRetour()),
                    const Divider(
                        height: 2, color: Colors.black, thickness: 0.2),
                    const SizedBox(height: 15),
                    const SizedBox(child: footerPrsent1()),
                    const SizedBox(height: 15),
                    Stack(
                      children: [
                        Image.asset('assets/images/fond_accueil4.jpg'),
                        const Column(
                          children: [
                            SizedBox(child: lignesTextPresentation()),
                            const SizedBox(height: 15),
                            SizedBox(child: logoTextePresentation()),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(child: footerPresentation()),
          ],
        ),
      ),
    );
  }
}

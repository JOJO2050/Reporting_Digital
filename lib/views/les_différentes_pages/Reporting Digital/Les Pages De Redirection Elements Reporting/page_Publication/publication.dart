import 'package:flutter/material.dart';

import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterPublication.dart';

import 'LigneDescroption.dart';
import 'LigneRetourPublication.dart';
import 'firtsLinePublication.dart';
import 'lignePublication.dart';

class PublicationPage extends StatefulWidget {
  const PublicationPage({super.key});

  @override
  State<PublicationPage> createState() => _PublicationPageState();
}

class _PublicationPageState extends State<PublicationPage> {
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
                const SizedBox(height: 60, child: firstLinePublication()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 10),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 60, child: SearchBarreReporting()),
                Stack(
                  children: [
                    Image.asset('assets/images/pop6.PNG'),
                  ],
                ),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(child: LigneRetourPublication()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                /* SizedBox(height: 70, child: secondLinePublication()), */
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil.jpg'),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(child: ligneDescriptionPublication()),
                    const SizedBox(height: 20),
                    const SizedBox(child: lignePublication()),
                    const SizedBox(height: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(child: footerPublication()),
          ],
        ),
      ),
    );
  }
}

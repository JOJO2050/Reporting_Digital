import 'package:flutter/material.dart';

import 'page_lié_a_accueil/BarreRechercheReporting.dart';
import 'page_lié_a_accueil/contenuAccueil.dart';
import 'page_lié_a_accueil/firstLignePage.dart';
import 'page_lié_a_accueil/grand_titre.dart';

import 'page_lié_a_accueil/pied_de_page3.dart';
import 'page_lié_a_accueil/secondligne.dart';

class accueilPage extends StatefulWidget {
  const accueilPage({super.key});

  @override
  State<accueilPage> createState() => _accueilPageState();
}

class _accueilPageState extends State<accueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(height: 60, child: firstLigne()), // prémiere LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10), // second LIGNE
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLigne()), // second LIGNE
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  photoFond,
                ),
                const SizedBox(child: grandTitre()),
              ],
            ),
            const SizedBox(height: 15),

            Stack(
              children: [
                Image.asset('assets/images/bande.png'),
              ],
            ),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            const SizedBox(child: piedDePage3()),
            //

            //
          ],
        ),
      ),
    );
  }
}

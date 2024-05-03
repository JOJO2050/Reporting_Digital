import 'package:flutter/material.dart';

import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterAbreStrategique.dart';

import 'SecondLineAbreStrategique.dart';
import 'firtsLineAbreStrategique.dart';
import 'ligneRetourArbreStrategique.dart';
import 'lignesDesPhrasesArbreStrategique.dart';

class ArbreStrategiePage extends StatefulWidget {
  const ArbreStrategiePage({super.key});

  @override
  State<ArbreStrategiePage> createState() => _ArbreStrategiePageState();
}

class _ArbreStrategiePageState extends State<ArbreStrategiePage> {
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
                SizedBox(height: 60, child: firstLineStrategie()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                /*  Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineStrategie()),
                Divider(height: 2, color: Colors.black, thickness: 0.2), */
              ],
            ),

            Stack(
              children: [
                Image.asset(
                  'assets/images/ARBRENEW.png',
                ),
              ],
            ),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: const LigneretourArbreStrategique()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil.jpg'),
                const Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(child: lignesTextArbreStrategique()),
                  ],
                ),
              ],
            ),

            const SizedBox(child: footerStrategie()),
            //

            //
          ],
        ),
      ),
    );
  }
}

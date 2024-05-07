import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterPerimetre.dart';
import 'SecondLinePerimetre.dart';
import 'firtsLinePerimetre.dart';

class PerimetrePage extends StatefulWidget {
  const PerimetrePage({super.key});

  @override
  State<PerimetrePage> createState() => _PerimetrePageState();
}

class _PerimetrePageState extends State<PerimetrePage> {
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
                SizedBox(height: 60, child: firstLinePerimetre()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLinePerimetre()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            Stack(
              children: [
                Image.asset('assets/images/plan.png'),
                const Positioned(
                  top: -5,
                  left: 40,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Périmètre",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Color.fromARGB(255, 245, 201, 80),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil7.jpg'),
                const Column(
                  children: [
                    SizedBox(height: 15),

                    // ignore: unnecessary_const
                    Divider(height: 2, color: Colors.black, thickness: 0.2),

                    //const SizedBox(child: slide()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                  ],
                ),
              ],
            ),
            const SizedBox(child: footerPerimetre()),
            //

            //
          ],
        ),
      ),
    );
  }
}

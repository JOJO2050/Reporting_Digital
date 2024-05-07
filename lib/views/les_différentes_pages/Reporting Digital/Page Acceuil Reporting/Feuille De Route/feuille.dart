import 'package:flutter/material.dart';
import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterFeuille.dart';
import 'SecondLineFeuille.dart';
import 'firtsLineFeuille.dart';
import 'ligneRetourFeuille.dart';
import 'lignesDesPhrasesFeuille.dart';

class FeuillePage extends StatefulWidget {
  const FeuillePage({super.key});

  @override
  State<FeuillePage> createState() => _FeuillePageState();
}

class _FeuillePageState extends State<FeuillePage> {
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
                SizedBox(height: 60, child: firstLineFeuille()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineFeuille()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/sifca.png'),
                const Positioned(
                  top: -5,
                  left: 70,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Feuille de route",
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

            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            const SizedBox(child: const LigneRetourFeuille()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil4.jpg'),
                const Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(child: lignesTextFeuile()),
                  ],
                ),
              ],
            ),

            const SizedBox(child: footerFeuille()),
            //

            //
          ],
        ),
      ),
    );
  }
}

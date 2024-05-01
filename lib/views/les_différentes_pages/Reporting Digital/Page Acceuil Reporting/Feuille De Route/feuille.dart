import 'package:flutter/material.dart';
import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterFeuille.dart';
import 'SecondLineFeuille.dart';
import 'firtsLineFeuille.dart';

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
                Image.asset(
                  'assets/images/pop9.jpeg',
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),

            const SizedBox(child: footerFeuille()),
            //

            //
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterDeclaration.dart';
import 'SecondLineDeclaration.dart';
import 'firtsLineDeclaration.dart';
import 'fourLineDeclaration.dart';
import 'ligneDeclaration.dart';
import 'threeLineDeclaration.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({super.key});

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
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
                const SizedBox(height: 60, child: firstLineDecla()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 10),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 60, child: SearchBarreReporting()),
                Stack(
                  children: [
                    Image.asset('assets/images/fond_accueil.jpg'),
                    Column(
                      children: [
                        const Divider(
                            height: 2, color: Colors.black, thickness: 0.2),
                        const SizedBox(height: 70, child: secondLineDecla()),
                        Stack(
                          children: [
                            Image.asset('assets/images/sifca.png'),
                            const Positioned(
                              top: -5,
                              left: 70,
                              bottom: 5,
                              child: Center(
                                child: Text(
                                  "Déclaration du dirigeant",
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
                        const Divider(
                            height: 2, color: Colors.black, thickness: 0.2),
                        const SizedBox(child: LigneAcceuilRetour()),
                        const Divider(
                            height: 2, color: Colors.black, thickness: 0.2),
                        const SizedBox(height: 10),
                        const SizedBox(child: threeLineDeclaration()),
                        const SizedBox(height: 20),
                        const SizedBox(child: fourLineDeclaration()),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(child: footerDecla()),
            //

            //
          ],
        ),
      ),
    );
  }
}

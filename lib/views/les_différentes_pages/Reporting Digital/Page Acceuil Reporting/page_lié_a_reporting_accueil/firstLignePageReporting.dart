import 'package:flutter/material.dart';

import '../buttonHoverReprting&Accueil/buttonLogin.dart';
import 'pageDeslanguesReporting.dart';

class firstLigneReporting extends StatelessWidget {
  const firstLigneReporting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 56, 39, 27),
      constraints: const BoxConstraints.expand(width: double.infinity),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 100),
            Image.asset('assets/icons/Logotype_Sifca.png', width: 100),
            const SizedBox(width: 300),
            const Text(" Reporting Integré Année 2024",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 255, 255, 255))),
            const SizedBox(width: 290),
            const SizedBox(child: traductionLangue()),
            const SizedBox(width: 20),
            SizedBox(child: ButtonLogin()),
          ],
        ),
      ),
    );
  }
}

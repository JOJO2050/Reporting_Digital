import 'package:flutter/material.dart';

import '../../../Page Acceuil Reporting/AccueilReporting.dart';

import '../../../la_page_accueil/page_lié_a_accueil/pageDeslanguues.dart';

class firstLineImpact extends StatelessWidget {
  const firstLineImpact({super.key});

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
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const accueilPageReporting()));
              },
              child: Image.asset(
                'assets/icons/Logotype_Sifca.png',
                width: 100,
              ),
            ),
            const SizedBox(width: 300),
            const Text(" Reporting Integré Année 2024",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 255, 255, 255))),
            const SizedBox(width: 380),
            const SizedBox(child: traductionLangue()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/boutonContexte.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/boutonMaterialit%C3%A9.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/boutonR&o.dart';

import '../bouton Analyse et Materialité/boutonImpact.dart';

class secondLinePartiePrenante extends StatefulWidget {
  const secondLinePartiePrenante({super.key});

  @override
  State<secondLinePartiePrenante> createState() =>
      _secondLinePartiePrenanteState();
}

class _secondLinePartiePrenanteState extends State<secondLinePartiePrenante> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonContexte()),
          const SizedBox(width: 40),
          SizedBox(child: buttonRetO()),
          const SizedBox(width: 40),
          SizedBox(child: buttonImpact()),
          const SizedBox(width: 40),
          SizedBox(child: buttonMaterialite()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

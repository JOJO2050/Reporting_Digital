import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/BoutonPartiePrenante.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/boutonContexte.dart';

import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/bouton%20Analyse%20et%20Materialit%C3%A9/boutonR&o.dart';

import '../bouton Analyse et Materialité/boutonImpact.dart';

class secondLineMaterialite extends StatefulWidget {
  const secondLineMaterialite({super.key});

  @override
  State<secondLineMaterialite> createState() => _secondLineMaterialiteState();
}

class _secondLineMaterialiteState extends State<secondLineMaterialite> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonContexte()),
          const SizedBox(width: 40),
          SizedBox(child: buttonPartiePrenante()),
          const SizedBox(width: 40),
          SizedBox(child: buttonRetO()),
          const SizedBox(width: 40),
          SizedBox(child: buttonImpact()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

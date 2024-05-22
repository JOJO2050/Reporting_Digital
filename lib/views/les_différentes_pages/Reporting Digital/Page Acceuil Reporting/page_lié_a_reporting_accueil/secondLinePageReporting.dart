import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonAnalyseMaterialite.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonBusinessModel.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonConformite.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonPerformenceEsg.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonPublication.dart';

import '../buttonHoverReprting&Accueil/ButtonHoverStrategieDD.dart';

class secondLigneReporting extends StatefulWidget {
  const secondLigneReporting({super.key});

  @override
  State<secondLigneReporting> createState() => _secondLigneReportingState();
}

class _secondLigneReportingState extends State<secondLigneReporting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(child: buttonBusinessModel()),
          const SizedBox(width: 30),
          /*SizedBox(
            child: boutonStrategieDd(),
          ),
            const SizedBox(width: 30),
          SizedBox(child: buttonAnalyseMaterialite()),
          const SizedBox(width: 30),
          SizedBox(child: buttonPerformanceEsg()),
          const SizedBox(width: 30),
          SizedBox(child: buttonConformite()), */
          const SizedBox(width: 300),
          SizedBox(child: buttonPublicaion()),
        ],
      ),
    );
  }
}

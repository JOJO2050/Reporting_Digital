import 'package:flutter/material.dart';

import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonPerformenceEsg.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/buttonHoverReprting&Accueil/buttonAnalyseMaterialite.dart';

import '../../Page Acceuil Reporting/buttonHoverReprting&Accueil/buttonBusinessModel.dart';
import '../../Page Acceuil Reporting/buttonHoverReprting&Accueil/buttonConformite.dart';
import '../../Page Acceuil Reporting/buttonHoverReprting&Accueil/buttonPublication.dart';

class secondLigne extends StatefulWidget {
  const secondLigne({super.key});

  @override
  State<secondLigne> createState() => _secondLigneState();
}

class _secondLigneState extends State<secondLigne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          SizedBox(child: buttonBusinessModel()),
          const SizedBox(width: 40),
          SizedBox(child: buttonAnalyseMaterialite()),
          const SizedBox(width: 40),
          const SizedBox(width: 40),
          SizedBox(child: buttonPerformanceEsg()),
          const SizedBox(width: 40),
          SizedBox(child: buttonConformite()),
          const SizedBox(width: 40),
          SizedBox(child: buttonPublicaion()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

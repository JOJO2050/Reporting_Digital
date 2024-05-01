import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Business_Model/BoutonBusinessModel/boutonOrganeDir.dart';

import '../BoutonBusinessModel/boutonDeclaration.dart';

import '../BoutonBusinessModel/boutonSchemaCrea.dart';

class secondLinePresentation extends StatefulWidget {
  const secondLinePresentation({super.key});

  @override
  State<secondLinePresentation> createState() => _secondLinePresentationState();
}

class _secondLinePresentationState extends State<secondLinePresentation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDeclaration()),
          const SizedBox(width: 40),
          SizedBox(child: buttonSchemaCreation()),
          const SizedBox(width: 40),
          SizedBox(child: buttonOrganeDirigeant()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

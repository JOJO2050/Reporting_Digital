import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Business_Model/BoutonBusinessModel/boutonOrganeDir.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Business_Model/BoutonBusinessModel/boutonPresEntr.dart';

import '../BoutonBusinessModel/boutonDeclaration.dart';

class secondLineschema extends StatefulWidget {
  const secondLineschema({super.key});

  @override
  State<secondLineschema> createState() => _secondLineschemaState();
}

class _secondLineschemaState extends State<secondLineschema> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDeclaration()),
          const SizedBox(width: 40),
          SizedBox(child: buttonPresentationEntreprise()),
          const SizedBox(width: 40),
          SizedBox(child: buttonOrganeDirigeant()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

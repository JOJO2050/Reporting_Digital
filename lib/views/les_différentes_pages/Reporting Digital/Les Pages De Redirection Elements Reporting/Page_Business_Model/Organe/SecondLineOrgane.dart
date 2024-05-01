import 'package:flutter/material.dart';

import '../BoutonBusinessModel/boutonDeclaration.dart';

import '../BoutonBusinessModel/boutonPresEntr.dart';
import '../BoutonBusinessModel/boutonSchemaCrea.dart';

class secondLineOrgane extends StatefulWidget {
  const secondLineOrgane({super.key});

  @override
  State<secondLineOrgane> createState() => _secondLineOrganeState();
}

class _secondLineOrganeState extends State<secondLineOrgane> {
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
          SizedBox(child: buttonSchemaCreation()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

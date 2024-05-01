import 'package:flutter/material.dart';

import '../BoutonBusinessModel/boutonOrganeDir.dart';
import '../BoutonBusinessModel/boutonPresEntr.dart';
import '../BoutonBusinessModel/boutonSchemaCrea.dart';

class secondLineDecla extends StatefulWidget {
  const secondLineDecla({super.key});

  @override
  State<secondLineDecla> createState() => _secondLineDeclaState();
}

class _secondLineDeclaState extends State<secondLineDecla> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonPresentationEntreprise()),
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

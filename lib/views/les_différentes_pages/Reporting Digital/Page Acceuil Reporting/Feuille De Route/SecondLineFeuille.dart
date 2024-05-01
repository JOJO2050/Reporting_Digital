import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonArbreStrategique.dart';

import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonPolitiqueDD.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonStrategie.dart';

class secondLineFeuille extends StatefulWidget {
  const secondLineFeuille({super.key});

  @override
  State<secondLineFeuille> createState() => _secondLineFeuilleState();
}

class _secondLineFeuilleState extends State<secondLineFeuille> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonPolitique()),
          const SizedBox(width: 40),
          SizedBox(child: buttonArbreStrategie()),
          const SizedBox(width: 40),
          SizedBox(child: buttonAxesStrategique()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

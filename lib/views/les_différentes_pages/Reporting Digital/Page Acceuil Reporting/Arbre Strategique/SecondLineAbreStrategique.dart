import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonFeuille.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonPolitiqueDD.dart';

import '../boutonStrategieHover/boutonStrategie.dart';

class secondLineStrategie extends StatefulWidget {
  const secondLineStrategie({super.key});

  @override
  State<secondLineStrategie> createState() => _secondLineStrategieState();
}

class _secondLineStrategieState extends State<secondLineStrategie> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonPolitique()),
          const SizedBox(width: 40),
          SizedBox(child: buttonAxesStrategique()),
          const SizedBox(width: 40),
          SizedBox(child: buttonFeuille()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

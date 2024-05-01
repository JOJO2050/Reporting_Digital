import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonArbreStrategique.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonFeuille.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/boutonStrategieHover/boutonPolitiqueDD.dart';

class secondLineAxesStrategiques extends StatefulWidget {
  const secondLineAxesStrategiques({super.key});

  @override
  State<secondLineAxesStrategiques> createState() =>
      _secondLineAxesStrategiquesState();
}

class _secondLineAxesStrategiquesState
    extends State<secondLineAxesStrategiques> {
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
          SizedBox(child: buttonFeuille()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

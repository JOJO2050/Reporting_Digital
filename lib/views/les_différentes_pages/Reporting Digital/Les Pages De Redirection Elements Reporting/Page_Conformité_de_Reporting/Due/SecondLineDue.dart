import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonIndexe.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonMethodologie.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonPerimetre.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonReconnaissance.dart';

class secondLineDue extends StatefulWidget {
  const secondLineDue({super.key});

  @override
  State<secondLineDue> createState() => _secondLineDueState();
}

class _secondLineDueState extends State<secondLineDue> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonMethodologie()),
          const SizedBox(width: 40),
          SizedBox(child: buttonReconnaissance()),
          const SizedBox(width: 40),
          SizedBox(child: buttonIndexe()),
          const SizedBox(width: 40),
          SizedBox(child: buttonPerimetre()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

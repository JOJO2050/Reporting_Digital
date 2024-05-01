import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonDue.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonIndexe.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonMethodologie.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Conformit%C3%A9_de_Reporting/BouttonConformit%C3%A9Reporting/buttonReconnaissance.dart';

class secondLinePerimetre extends StatefulWidget {
  const secondLinePerimetre({super.key});

  @override
  State<secondLinePerimetre> createState() => _secondLinePerimetreState();
}

class _secondLinePerimetreState extends State<secondLinePerimetre> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDue()),
          const SizedBox(width: 40),
          SizedBox(child: buttonMethodologie()),
          const SizedBox(width: 40),
          SizedBox(child: buttonReconnaissance()),
          const SizedBox(width: 40),
          SizedBox(child: buttonIndexe()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

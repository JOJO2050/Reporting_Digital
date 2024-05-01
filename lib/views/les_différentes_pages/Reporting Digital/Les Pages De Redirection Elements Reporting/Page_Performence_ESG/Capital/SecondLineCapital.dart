import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonClimat.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonCommunaute.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonDiversite.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonEnvironnement.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonOdd.dart';

class secondLineCapital extends StatefulWidget {
  const secondLineCapital({super.key});

  @override
  State<secondLineCapital> createState() => _secondLineCapitalState();
}

class _secondLineCapitalState extends State<secondLineCapital> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDiversite()),
          const SizedBox(width: 40),
          SizedBox(child: buttonEnvironnement()),
          const SizedBox(width: 40),
          SizedBox(child: buttonCommunaute()),
          const SizedBox(width: 40),
          SizedBox(child: buttonClimat()),
          const SizedBox(width: 40),
          SizedBox(child: buttonOdd()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

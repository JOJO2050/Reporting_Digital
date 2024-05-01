import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonCapital.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonClimat.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonCommunaute.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonDiversite.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonOdd.dart';

class secondLineEnvironnement extends StatefulWidget {
  const secondLineEnvironnement({super.key});

  @override
  State<secondLineEnvironnement> createState() =>
      _secondLineEnvironnementState();
}

class _secondLineEnvironnementState extends State<secondLineEnvironnement> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDiversite()),
          const SizedBox(width: 40),
          SizedBox(child: buttonCapital()),
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

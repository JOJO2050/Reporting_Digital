import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/buttonPerformence/buttonCapital.dart';

import '../buttonPerformence/buttonCommunaute.dart';
import '../buttonPerformence/buttonDiversite.dart';
import '../buttonPerformence/buttonEnvironnement.dart';
import '../buttonPerformence/buttonOdd.dart';

class secondLineClimat extends StatefulWidget {
  const secondLineClimat({super.key});

  @override
  State<secondLineClimat> createState() => _secondLineClimatState();
}

class _secondLineClimatState extends State<secondLineClimat> {
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
          SizedBox(child: buttonCapital()),
          const SizedBox(width: 40),
          SizedBox(child: buttonCommunaute()),
          const SizedBox(width: 40),
          SizedBox(child: buttonOdd()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}

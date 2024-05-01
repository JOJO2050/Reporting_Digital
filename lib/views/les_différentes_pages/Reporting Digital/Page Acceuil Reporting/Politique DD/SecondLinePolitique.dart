import 'package:flutter/material.dart';

import '../boutonStrategieHover/boutonArbreStrategique.dart';
import '../boutonStrategieHover/boutonFeuille.dart';
import '../boutonStrategieHover/boutonStrategie.dart';

class secondLinePolitique extends StatefulWidget {
  const secondLinePolitique({super.key});

  @override
  State<secondLinePolitique> createState() => _secondLinePolitiqueState();
}

class _secondLinePolitiqueState extends State<secondLinePolitique> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonArbreStrategie()),
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

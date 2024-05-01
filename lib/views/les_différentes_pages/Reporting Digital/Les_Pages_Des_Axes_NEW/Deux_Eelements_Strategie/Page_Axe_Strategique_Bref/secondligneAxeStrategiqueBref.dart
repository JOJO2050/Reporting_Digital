import 'package:flutter/material.dart';

class secondLigneAxeStrategiqueBrefNew extends StatefulWidget {
  const secondLigneAxeStrategiqueBrefNew({super.key});

  @override
  State<secondLigneAxeStrategiqueBrefNew> createState() =>
      _secondLigneAxeStrategiqueBrefNewState();
}

class _secondLigneAxeStrategiqueBrefNewState
    extends State<secondLigneAxeStrategiqueBrefNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          /* SizedBox(
            child: buttonInitGouvEth(),
          ), */
          /* const SizedBox(width: 10),
          SizedBox(
            child: newbuttonAcceuilEmploiCond(),
          ),
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilPreserv(),
          ),
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilCommInov(),
          ), */
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../Page_Communauté_Innovation/ButtonAcccueilCommInov.dart';
import '../Page_Gouvernance_Ethique/ButtonAcueilGouvEth.dart';

import '../Page_Preservation_Environnement/ButtonAcueilPreserv.dart';

class secondLigneEmploiCondiNew extends StatefulWidget {
  const secondLigneEmploiCondiNew({super.key});

  @override
  State<secondLigneEmploiCondiNew> createState() =>
      _secondLigneEmploiCondiNewState();
}

class _secondLigneEmploiCondiNewState extends State<secondLigneEmploiCondiNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            child: buttonaAccueilGouvEth(),
          ),
          const SizedBox(width: 10),
          /* SizedBox(
           newbuttonAcceuilEmploiCond(),
          ), */
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilCommInov(),
          ),
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilPreserv(),
          ),
        ],
      ),
    );
  }
}

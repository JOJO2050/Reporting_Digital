import 'package:flutter/material.dart';

import '../Page_Communauté_Innovation/ButtonAcccueilCommInov.dart';
import '../Page_Gouvernance_Ethique/ButtonAcueilGouvEth.dart';
import '../Page_New_Emploi_Condi_Travail/ButtonAcueilEmploiCondi.dart';

class secondLignePreservNew extends StatefulWidget {
  const secondLignePreservNew({super.key});

  @override
  State<secondLignePreservNew> createState() => _secondLignePreservNewState();
}

class _secondLignePreservNewState extends State<secondLignePreservNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 10),
          SizedBox(
            child: buttonaAccueilGouvEth(),
          ),
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilEmploiCond(),
          ),
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilCommInov(),
          ),

          /*  SizedBox(
            child: newbuttonAcceuilPreserEnv(),
          ), */
        ],
      ),
    );
  }
}

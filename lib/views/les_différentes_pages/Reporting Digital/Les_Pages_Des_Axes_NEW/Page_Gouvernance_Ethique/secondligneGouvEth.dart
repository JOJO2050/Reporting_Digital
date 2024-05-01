import 'package:flutter/material.dart';

import '../Page_Communauté_Innovation/ButtonAcccueilCommInov.dart';
import '../Page_New_Emploi_Condi_Travail/ButtonAcueilEmploiCondi.dart';

import '../Page_Preservation_Environnement/ButtonAcueilPreserv.dart';

class secondLigneGouvEthNew extends StatefulWidget {
  const secondLigneGouvEthNew({super.key});

  @override
  State<secondLigneGouvEthNew> createState() => _secondLigneGouvEthNewState();
}

class _secondLigneGouvEthNewState extends State<secondLigneGouvEthNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          /* SizedBox(
            child: buttonInitGouvEth(),
          ), */
          const SizedBox(width: 10),
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Page_Gouvernance_Ethique/ButtonAcueilGouvEth.dart';
import '../Page_New_Emploi_Condi_Travail/ButtonAcueilEmploiCondi.dart';

import '../Page_Preservation_Environnement/ButtonAcueilPreserv.dart';

class secondLigneCommuInnov extends StatefulWidget {
  const secondLigneCommuInnov({super.key});

  @override
  State<secondLigneCommuInnov> createState() => _secondLigneCommuInnovState();
}

class _secondLigneCommuInnovState extends State<secondLigneCommuInnov> {
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

          /*  SizedBox(
            child: newbuttonAcceuilCommInov(),
          ), */
          const SizedBox(width: 110),
          SizedBox(
            child: newbuttonAcceuilPreserv(),
          ),
        ],
      ),
    );
  }
}

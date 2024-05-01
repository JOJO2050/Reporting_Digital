import 'package:flutter/material.dart';

import '../../Page_Communauté_Innovation/AccueilCommunInnov.dart';

class BouttonCouleurCommInov extends StatefulWidget {
  @override
  _BouttonCouleurCommInovState createState() => _BouttonCouleurCommInovState();
}

class _BouttonCouleurCommInovState extends State<BouttonCouleurCommInov> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // Position de l'ombre (X, Y)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const newPageAcueilleCommuInnov()));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) =>
                  _isHovered ? Colors.red : Color.fromARGB(255, 247, 164, 70),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'Communanuté et innovation societal',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

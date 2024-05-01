import 'package:flutter/material.dart';
import '../../Page_New_Emploi_Condi_Travail/AccueilEmploiCondi.dart';

class BouttonCouleurEmploiCond extends StatefulWidget {
  @override
  _BouttonCouleurEmploiCondState createState() =>
      _BouttonCouleurEmploiCondState();
}

class _BouttonCouleurEmploiCondState extends State<BouttonCouleurEmploiCond> {
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
                    builder: (_) => const newPageAcueilleEmploiCondi()));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) =>
                  _isHovered ? Colors.red : Color.fromARGB(255, 96, 158, 250),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              ' Emploi & condition de travail ',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

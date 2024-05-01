import 'package:flutter/material.dart';

import '../../la_page_accueil/Accueill.dart';

class buttonReporting extends StatefulWidget {
  @override
  _buttonReportingState createState() => _buttonReportingState();
}

class _buttonReportingState extends State<buttonReporting> {
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
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const accueilPage()));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (_isHovered) {
                  return Color.fromARGB(
                      255, 62, 73, 83); // Couleur lorsque survolé
                }
                return Color.fromARGB(255, 128, 134, 128); // Couleur par défaut
              },
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'Reporting',
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

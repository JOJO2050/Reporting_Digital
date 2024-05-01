import 'package:flutter/material.dart';

import '../Capital/capital.dart';

class buttonCapital extends StatefulWidget {
  @override
  _buttonCapitalState createState() => _buttonCapitalState();
}

class _buttonCapitalState extends State<buttonCapital> {
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
                context, MaterialPageRoute(builder: (_) => CapitalPage()));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (_isHovered) {
                  return Color.fromARGB(
                      255, 14, 13, 114); // Couleur lorsque survolé
                }
                return Color.fromARGB(255, 69, 70, 69); // Couleur par défaut
              },
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "             Capital             ",
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

import 'package:flutter/material.dart';

import 'AccueilCommunInnov.dart';

class newbuttonAcceuilCommuInnov extends StatefulWidget {
  @override
  _newbuttonAcceuilCommuInnovState createState() =>
      _newbuttonAcceuilCommuInnovState();
}

class _newbuttonAcceuilCommuInnovState
    extends State<newbuttonAcceuilCommuInnov> {
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
              'Communauté et innovation sociétale',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

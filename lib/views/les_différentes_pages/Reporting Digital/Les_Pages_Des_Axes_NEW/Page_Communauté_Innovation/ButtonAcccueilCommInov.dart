import 'package:flutter/material.dart';

import '../Page_Communauté_Innovation/AccueilCommunInnov.dart';

class newbuttonAcceuilCommInov extends StatefulWidget {
  @override
  _newbuttonAcceuilCommInovState createState() =>
      _newbuttonAcceuilCommInovState();
}

class _newbuttonAcceuilCommInovState extends State<newbuttonAcceuilCommInov> {
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
              (Set<MaterialState> states) => _isHovered
                  ? const Color.fromARGB(255, 14, 13, 114)
                  : Color.fromARGB(255, 69, 70, 69),
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

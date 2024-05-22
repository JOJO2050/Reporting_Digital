import 'package:flutter/material.dart';

import '../boutonLogin/boutonLoginDetail.dart';
// Assurez-vous d'importer le fichier contenant le formulaire

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
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
              color: Colors.grey.withOpacity(0),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content:
                      NewFormulaire(), // Remplacer l'image par le formulaire
                );
              },
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (_isHovered) {
                  return Color.fromARGB(255, 114, 13, 13);
                }
                return Color.fromARGB(255, 8, 128, 34);
              },
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(1.0),
            child: Text(
              'Connexion',
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

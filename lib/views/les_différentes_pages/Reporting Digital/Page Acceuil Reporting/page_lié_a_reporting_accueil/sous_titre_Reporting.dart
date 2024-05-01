import 'package:flutter/material.dart';

class sousTitre extends StatelessWidget {
  const sousTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5), // Position de l'ombre (X, Y)
            ),
          ],
        ),
        child: const Text(
          'NOTRE CREATION DE VALEUR DURABLE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

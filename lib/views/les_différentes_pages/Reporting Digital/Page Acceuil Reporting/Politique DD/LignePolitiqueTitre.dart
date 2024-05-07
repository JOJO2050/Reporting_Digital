import 'package:flutter/material.dart';

class lignePolitique1 extends StatelessWidget {
  const lignePolitique1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 82, 3, 3)
                  .withOpacity(0.3), // Couleur de l'ombre
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5), // Position de l'ombre (X, Y)
            ),
          ],
        ),
        child: const Text(
          'POLITIQUES / CRITÈRES / RÈGLES',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 97, 26, 21),
          ),
        ),
      ),
    );
  }
}

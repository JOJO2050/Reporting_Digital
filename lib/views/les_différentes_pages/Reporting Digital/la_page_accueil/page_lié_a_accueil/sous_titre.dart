import 'package:flutter/material.dart';

class sousTitre extends StatelessWidget {
  const sousTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "NOTRE CREATION DE VALEUR EN 4 AXES STRATÉGIQUES ET 10 ENJEUX",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 31, 30, 30)),
          ),
        ],
      ),
    );
  }
}

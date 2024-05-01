import 'package:flutter/material.dart';

import '../../Page Acceuil Reporting/AccueilReporting.dart';

class LigneEmploieConditionretour extends StatelessWidget {
  const LigneEmploieConditionretour({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const accueilPageReporting()));
          },
          child: const Icon(
            Icons.house,
            size: 15,
            color: Color.fromARGB(255, 114, 107, 107),
          ),
        ),
        const Text("Accueil =>>",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color.fromARGB(255, 114, 107, 107))),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const accueilPageReporting()));
            },
            child: const Text("Strategie DD",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromARGB(255, 163, 52, 52)))),
        const Text("=>> Emploie et condition de travail",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color.fromARGB(255, 163, 52, 52))),
      ],
    );
  }
}

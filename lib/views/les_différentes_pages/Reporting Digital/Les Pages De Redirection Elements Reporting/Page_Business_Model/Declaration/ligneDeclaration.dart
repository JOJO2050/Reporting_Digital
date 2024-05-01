import 'package:flutter/material.dart';

import '../../../Page Acceuil Reporting/AccueilReporting.dart';
import '../../../la_page_accueil/Accueill.dart';

class LigneAcceuilRetour extends StatelessWidget {
  const LigneAcceuilRetour({super.key});

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
            child: const Text("Business Model",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromARGB(255, 14, 13, 114)))),
        const Text("=>> Déclaration du dirigeant",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color.fromARGB(255, 14, 13, 114))),
      ],
    );
  }
}

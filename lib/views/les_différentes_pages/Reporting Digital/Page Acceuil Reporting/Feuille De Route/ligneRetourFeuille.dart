import 'package:flutter/material.dart';

import '../../Page Acceuil Reporting/AccueilReporting.dart';

class LigneRetourFeuille extends StatelessWidget {
  const LigneRetourFeuille({super.key});

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
            size: 20,
            color: Color.fromARGB(255, 163, 52, 52),
          ),
        ),
        const Text("=>> Strategie DD",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color.fromARGB(255, 163, 52, 52))),
      ],
    );
  }
}

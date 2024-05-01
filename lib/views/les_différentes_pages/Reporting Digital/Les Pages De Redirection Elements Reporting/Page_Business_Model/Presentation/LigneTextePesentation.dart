import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lignesTextPresentation extends StatelessWidget {
  const lignesTextPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 140),
            Text("SIFCA en bref",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color.fromARGB(255, 2, 2, 2)))
          ],
        ),
      ],
    );
  }
}

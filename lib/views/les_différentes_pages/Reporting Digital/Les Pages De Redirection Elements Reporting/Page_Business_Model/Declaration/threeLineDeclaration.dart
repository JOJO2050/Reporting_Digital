import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class threeLineDeclaration extends StatelessWidget {
  const threeLineDeclaration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            Column(
              children: [
                Image.asset(
                  'assets/images/A1.png',
                  width: 400,
                ),
              ],
            ),
            const Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "Pierre BILLON",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "       Administrateur Directeur Général",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Administrator CEO of SIFCA ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 180, 145, 68)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}

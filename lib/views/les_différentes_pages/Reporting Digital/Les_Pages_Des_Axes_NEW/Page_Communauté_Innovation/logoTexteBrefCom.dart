import 'package:flutter/material.dart';

class logoTexteCom extends StatelessWidget {
  const logoTexteCom({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150),
        _buildIconCircle(
          'assets/icons/Monde.png',
          "COMMUNAUTE ET INNOVATION SOCIETAL",
        ),
      ],
    );
  }

  Widget _buildIconCircle(String imagePath, String text) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 129, 125, 125),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              width: 60,
              color: Color.fromARGB(255, 247, 164, 70),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

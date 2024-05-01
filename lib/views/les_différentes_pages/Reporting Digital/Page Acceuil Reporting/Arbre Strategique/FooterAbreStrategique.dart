import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/la_page_accueil/page_li%C3%A9_a_accueil/reseaux_sociaux.dart';

class footerStrategie extends StatelessWidget {
  const footerStrategie({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: BottomAppBar(
        color: Color.fromARGB(255, 56, 39, 27),
        height: 45,
        child: Row(
          children: [
            Text(
              '© 2024 SIFCA ,Toujours pour une visions plus pointue',
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 243, 239, 25)),
            ),
            SizedBox(
              width: 760,
            ),
            SizedBox(child: reseauSociaux()),
          ],
        ),
      ),
    );
  }
}

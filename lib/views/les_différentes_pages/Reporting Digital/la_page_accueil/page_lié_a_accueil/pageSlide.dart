import 'package:flutter/material.dart';

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../Contenu des Liens Photos ou icones/contenuAxes.dart';

class slide extends StatelessWidget {
  const slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageSlideshow(
          indicatorColor: Colors.blue,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              photoAxe1,
              fit: BoxFit.cover,
            ),
            Image.asset(
              photoAxe2,
              fit: BoxFit.cover,
            ),
            Image.asset(
              photoAxe3,
              fit: BoxFit.cover,
            ),
            Image.asset(
              photoAxe4,
              fit: BoxFit.cover,
            ),
            Image.asset(
              photoAxe5,
              fit: BoxFit.cover,
            ),
          ],
        )
      ],
    );
  }
}

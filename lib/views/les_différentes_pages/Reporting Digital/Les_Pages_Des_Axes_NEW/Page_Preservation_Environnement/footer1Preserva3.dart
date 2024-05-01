import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

class footer1PreservEnv3 extends StatefulWidget {
  const footer1PreservEnv3({Key? key}) : super(key: key);

  @override
  _footer1PreservEnv3State createState() => _footer1PreservEnv3State();
}

class _footer1PreservEnv3State extends State<footer1PreservEnv3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Distance à laquelle la footer1PreservEnv3 doit s'arrêter (en pixels)
  double stopDistance = 650.0; // Modifier cette valeur selon vos besoins

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // Démarrer l'animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200, // Couleur de fond grise
      child: Row(
        children: [
          Column(
            children: [
              Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    double screenWidth = MediaQuery.of(context).size.width;
                    double screenHeight = MediaQuery.of(context).size.height;

                    double slideWidth =
                        screenWidth * 0.4; // Largeur de la slide
                    double slideHeight =
                        screenHeight * 0.4; // Hauteur de la slide

                    double startPositionX =
                        -slideWidth; // Position de départ en dehors de l'écran à gauche
                    double endPositionX = screenWidth / 1.8 -
                        slideWidth / 30 -
                        stopDistance; // Position à laquelle la slide s'arrête

                    double currentX = Tween<double>(
                      begin: startPositionX,
                      end: endPositionX,
                    )
                        .animate(CurvedAnimation(
                          parent: _controller,
                          curve: Curves.easeInOut,
                        ))
                        .value;

                    return Transform.translate(
                      offset: Offset(currentX, 0),
                      child: Container(
                        width: slideWidth,
                        height:
                            slideHeight, // Ajustement de la hauteur de la slide
                        child: ImageSlideshow(
                          indicatorColor: Colors.blue,
                          onPageChanged: (value) {
                            debugPrint('Page changed: $value');
                          },
                          autoPlayInterval: 7000,
                          isLoop: true,
                          children: [
                            Image.asset(
                              photoFondCapture5,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondCapture6,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          // TRAVAIL SUR LES ELEMETS DU TEXTE A DROITE
          const Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              "GESTION DES DÉCHETS                                       ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "                  En plus de sa politique de gestion des déchets, le Groupe a mis en place plusieurs",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "                           initiatives et projet visant à réduire, réutiliser et recycler les déchets. Il s’agit notamnent",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "                   de la mise en place d’une unité de valorisation des déchets ménagers sur le site de",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "SAPH-Bongo, de SUCRIVOIRE-Zuénoula et Borotou.                                    ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

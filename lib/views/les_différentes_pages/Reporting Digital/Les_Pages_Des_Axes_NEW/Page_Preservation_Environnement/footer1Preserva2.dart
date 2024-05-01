import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

class footer1PreservEnv2 extends StatefulWidget {
  const footer1PreservEnv2({Key? key}) : super(key: key);

  @override
  _footer1PreservEnv2State createState() => _footer1PreservEnv2State();
}

class _footer1PreservEnv2State extends State<footer1PreservEnv2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Distance à laquelle la footer1PreservEnv2 doit s'arrêter (en pixels)
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
      color: Color.fromARGB(255, 253, 177, 177), // Couleur de fond grise
      child: Row(
        children: [
          // TRAVAIL SUR LES ELEMETS DU TEXTE A GAUCHE
          // ignore: prefer_const_constructors
          Column(
            children: const [
              Column(
                children: [
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              "GESTION DES EAUX USÉES ET EAUX DE                           ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "CONSOMMATION                                                                 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Nos usines sont équipées en majorité d’un système de bassin de lagunage pour un   ",
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
                            "  traitement biologique des effluents sans produits chimiques avant rejet dans le milieu",
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
                            "    naturel. L’eau de rejet est testée quotidiennement dans toutes les usines pour s’assurer",
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
                            " que la qualité des effluents est conforme à la limite légale. Une procédure de gestion",
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
                            "       des eaux de consommation permet une utilisation rationnelle et un partage équitable de",
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
                            "l’eau sur l’ensemble de nos unités agro industrielle.                                                         ",
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
                              photoFondCapture9,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondCapture10,
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

class footer1EmploiCondi2 extends StatefulWidget {
  const footer1EmploiCondi2({Key? key}) : super(key: key);

  @override
  _footer1EmploiCondi2State createState() => _footer1EmploiCondi2State();
}

class _footer1EmploiCondi2State extends State<footer1EmploiCondi2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Distance à laquelle la footer1EmploiCondi2 doit s'arrêter (en pixels)
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
      padding: const EdgeInsets.all(10),
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
                              photoFondEcole1,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondEcole2,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondEcole3,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondEcole4,
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
          Column(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/chapelle.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "   + 127 Ecoles préscolaire et primaires construites                                           ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Réhabilitées sur les sites du Groupe                         ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/chapelle.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "   03 établissements secondaires (2 collèges et 1 lycée)                                  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Construits sur les sites du Groupe                          ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/groupe.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "   + 26 000 élèves scolarisés (dont 69% issus des communautés)                  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "environnantes et + 48% de filles)                              ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/chapelle.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "  80 cantines                                                                                                           ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "scolaires                                                                       ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/livre.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "  2000 kits d’Excellence distribués chaque                                                         ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "        année",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Image.asset(
                            'assets/icons/livre.png',
                            width: 30,
                            color: const Color.fromARGB(255, 129, 75, 36),
                          ),
                          const Text(
                            "  86% de taux moyen de réussite au Certificat                                                    ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "d'études primaires et élémentaires (CEPE)            ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

class footer1Preserv extends StatefulWidget {
  const footer1Preserv({Key? key}) : super(key: key);

  @override
  _footer1PreservState createState() => _footer1PreservState();
}

class _footer1PreservState extends State<footer1Preserv>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Distance à laquelle la footer1Preserv doit s'arrêter (en pixels)
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
                              photoFondCapture1,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondCapture2,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondCapture3,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              photoFondCapture4,
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
                              "  + 4 650 hectares de forêts préservées                                              ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text("(Côte d’Ivoire, Ghana, Libéria et Nigéria)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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
                              "   100 hectares de couverture végétale reboisés chaque année par",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text("SUCRIVOIRE filiale du Groupe                ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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
                              "  + 50 000 arbres plantés en Côte d’Ivoire, à l’occasion de               ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text("la Journée Nationale de la Paix 2019",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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
                              "  2 hectares d’arboretum créés dans                                                   ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text("la forêt classée d’Anguédédous           ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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
                              "  8 400 hectares de forêts classées protégés à Bamo et Kinkaine,",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                              "                             à travers un appui aux comités de surveillance des forêts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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
                              "  de zone RAMSAR protégée                                                                ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Text("l’éco-citoyenneté dans nos écoles            ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ))
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

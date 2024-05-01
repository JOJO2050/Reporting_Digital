// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../la_page_accueil/page_lié_a_accueil/contenuAccueil.dart';

class footer1CommuInnov2 extends StatefulWidget {
  const footer1CommuInnov2({Key? key}) : super(key: key);

  @override
  _footer1CommuInnov2State createState() => _footer1CommuInnov2State();
}

class _footer1CommuInnov2State extends State<footer1CommuInnov2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Distance à laquelle la footer1CommuInnov2 doit s'arrêter (en pixels)
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
                              photoFondCondi5,
                              width: 500,
                            ),
                            Image.asset(
                              photoFondCond6,
                              width: 500,
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
            children: const [
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Text(
                            "  •",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            " 15 000 planteurs privés en moyenne, partenaires privilégiés                                                            ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "du Groupe SIFCA, sont assistés techniquement en vue de les                    ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "  orienter vers de bonnes pratiques agricoles et durable.                               ",
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
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Text(
                            "  •",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            " 15 Groupements de femmes, en partenariat avec l’ANADER sont                                                    ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "accompagnés pour la réalisation d’activités génératrices de                   ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "revenus                                                                                                           ",
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
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 100),
                          Text(
                            "  •",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            " 91 Jeunes issus de nos communautés locales sont formés au                                                    ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "métier de l’agropastorale à l’INFPA (Institut Nationale de                        ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Formation Professionnelle Agricole) avec un taux d’insertion de           ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "65%.                                                                                                                ",
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
            ],
          )
        ],
      ),
    );
  }
}

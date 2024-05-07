// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Page Acceuil Reporting/AccueilReporting.dart';

class lignePublication extends StatelessWidget {
  const lignePublication({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 130,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2024/03/rapport-rse-sifca-2022.pdf');
                  },
                  child: Image.asset(
                    'assets/images/pip1.PNG',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2024/03/rapport-rse-sifca-2022.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text('Rapport de DevelopPement durable 2022',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/RDD_SIFCA_2019_web.pdf');
                  },
                  child: Image.asset(
                    'assets/images/pip2.PNG',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/RDD_SIFCA_2019_web.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text('Rapport de DevelopPement durable 2019',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/rapport-dd-sifca-2017.pdf');
                  },
                  child: Image.asset(
                    'assets/images/pip3.PNG',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/rapport-dd-sifca-2017.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text('Rapport de DevelopPement durable 2017',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          children: [
            const SizedBox(
              width: 130,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/rapport-dd-sifca-2016.pdf');
                  },
                  child: Image.asset(
                    'assets/images/pip4.PNG',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/rapport-dd-sifca-2016.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text('Rapport de DevelopPement durable 2016',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/dd_sifca_2013_2014.pdf');
                  },
                  child: Image.asset(
                    'assets/images/pip5.PNG',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/dd_sifca_2013_2014.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text(
                      'Rapport de DevelopPement durable 2013-2014',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/Rapport_DD_SIFCA_2010_2012.pdf');
                  },
                  child: Image.asset(
                    'assets/images/okok.JPG',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/Rapport_DD_SIFCA_2010_2012.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red; // Couleur lors du survol
                        } else if (states.contains(MaterialState.pressed)) {
                          return Colors.green; // Couleur lors du clic
                        }
                        return Colors.blue; // Couleur normale
                      },
                    ),
                  ),
                  child: const Text(
                      'Rapport de DevelopPement durable 2010-2012',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

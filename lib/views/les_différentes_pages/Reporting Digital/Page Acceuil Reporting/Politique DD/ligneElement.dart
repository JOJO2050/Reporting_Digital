// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ligneElementPolitique extends StatelessWidget {
  const ligneElementPolitique({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/politique_de_durabilite.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/politique_de_durabilite.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2023/10/politique_de_durabilite_juin_2021.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Text('Politique De Durabilité',
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/politique-rh_page.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/politique-rh_page.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/politique-rh.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                    Icons.download_rounded,
                    color: Colors.white,
                  ), // Icône de téléchargement
                  label: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Politique Générale Des Ressources ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('Humaines Du Groupe SIFCA ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/politique-zero-deforestation.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/politique-zero-deforestation.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/politique-zero-deforestation.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Column(
                    children: [
                      Text('Critère De Preservation ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('De La Biodiversité ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/politique4.JPG',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/politique4.JPG',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2023/07/MANUEL-SGES-GROUPE-SIFCA-Fr.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Manuel & Procédure',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('SGES',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 600),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 82, 3, 3)
                        .withOpacity(0.3), // Couleur de l'ombre
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5), // Position de l'ombre (X, Y)
                  ),
                ],
              ),
              child: const Text(
                '     CHARTES     ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 26, 21)),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/charte-hygiene-securite.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/charte-hygiene-securite.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2023/10/politique_de_durabilite_juin_2021.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Text('Charte Hygiène et Sécurité',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/charte-sociale.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/charte-sociale.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/charte-sociale.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Text('Charte Sociale',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/charte-environnementale.jpg',
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/charte-environnementale.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    launch(
                        'https://groupesifca.com/wp-content/uploads/2022/07/charte-environnementale.pdf');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(
                              255, 14, 13, 114); // Couleur lors du survol
                        }
                        return const Color.fromARGB(
                            255, 69, 70, 69); // Couleur normale
                      },
                    ),
                  ),
                  icon: const Icon(
                      color: Colors.white,
                      Icons.download_rounded), // Icône de téléchargement
                  label: const Text('Charte Environnementale',
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

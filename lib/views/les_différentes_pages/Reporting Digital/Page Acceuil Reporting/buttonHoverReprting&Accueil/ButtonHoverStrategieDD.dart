import 'package:flutter/material.dart'; // Importation de la bibliothèque Flutter

// Importation des différentes pages nécessaires pour la navigation

import '../Arbre Strategique/Abrestrategie.dart';
import '../Axes Strategiques/AxesStrategiques.dart';
import '../Feuille De Route/feuille.dart';
import '../Politique DD/Politique.dart';

// Classe représentant le bouton avec menu déroulant
class boutonStrategieDd extends StatefulWidget {
  @override
  _boutonStrategieDdState createState() => _boutonStrategieDdState();
}

// État du bouton avec menu déroulant
class _boutonStrategieDdState extends State<boutonStrategieDd> {
  bool _isHovered = false; // Indicateur si le bouton est survolé ou non
  GlobalKey _menuKey = GlobalKey(); // Clé globale pour le menu déroulant

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // Utilisation de MouseRegion pour détecter le survol
      onEnter: (_) {
        // Action lorsque la souris entre dans la zone du bouton

        _showMenu(); // Afficher le menu déroulant
      },
      onExit: (_) {
        // Action lorsque la souris quitte la zone du bouton
      },
      child: Container(
        // Conteneur du bouton avec une décoration d'ombre
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: _isHovered // Vérifier si le bouton est survolé ou non
            ? ElevatedButton(
                // Si survolé, afficher le bouton avec le menu déroulant
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return const Color.fromARGB(255, 62, 73, 83);
                    },
                  ),
                ),
                child: PopupMenuButton<String>(
                  // Menu déroulant
                  key: _menuKey, // Utilisation de la clé globale
                  itemBuilder: (context) => [
                    // Éléments du menu
                    const PopupMenuItem(
                      child: Text('Politique DD'),
                    ),
                    const PopupMenuItem(
                      child: Text('Schema de la stratégie (Arbre)'),
                    ),
                    const PopupMenuItem(
                      child: Text('Axes Stratégiques'),
                    ),
                    const PopupMenuItem(
                      child: Text("Feuille de route"),
                    ),
                  ],
                ),
              )
            : ElevatedButton(
                // Si non survolé, afficher le bouton sans le menu déroulant
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Color.fromARGB(255, 14, 13, 114);
                    },
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    '      Strategie DD      ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  // Fonction pour afficher le menu déroulant
  void _showMenu() {
    final RenderBox button = context.findRenderObject()
        as RenderBox; // Trouver la position du bouton dans l'arbre de rendu
    final RenderBox overlay = Overlay.of(context).context.findRenderObject()
        as RenderBox; // Trouver la position de l'overlay
    final Offset position = button.localToGlobal(Offset.zero,
        ancestor:
            overlay); // Calculer la position du menu déroulant par rapport au bouton
    showMenu<String>(
      // Afficher le menu déroulant
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + button.size.height,
        position.dx + button.size.width,
        position.dy + button.size.height * 2,
      ),
      items: [
        // Éléments du menu déroulant
        /*  PopupMenuItem(
          child: const Text('Politique DD'),
          onTap: () {
            // Action lorsque l'utilisateur sélectionne un élément du menu
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const PolitiquePage(), // Navigation vers la page appropriée
              ),
            );
          },
        ), */
        PopupMenuItem(
          child: const Text('Schema de la stratégie (Arbre)'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ArbreStrategiePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: const Text('Axes Stratégiques'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AxesStrategiquesPage(),
              ),
            );
          },
        ),
        /*    PopupMenuItem(
          child: const Text("Feuille de route"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FeuillePage(),
              ),
            );
          },
        ), */
      ],
    );
  }
}

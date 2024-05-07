import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/AccueilReporting.dart';

import 'views/les_différentes_pages/Reporting Digital/Les Pages De Redirection Elements Reporting/Page_Business_Model/Presentation/Présentation.dart';
import 'views/les_différentes_pages/Reporting Digital/Les Pages De Redirection Elements Reporting/page_Publication/lignePublication.dart';
import 'views/les_différentes_pages/Reporting Digital/Les Pages De Redirection Elements Reporting/page_Publication/publication.dart';
import 'views/les_différentes_pages/Reporting Digital/Page Acceuil Reporting/Arbre Strategique/Abrestrategie.dart';
import 'views/les_différentes_pages/Reporting Digital/Page Acceuil Reporting/Axes Strategiques/AxesStrategiques.dart';
import 'views/les_différentes_pages/Reporting Digital/Page Acceuil Reporting/Politique DD/Politique.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, // Permet Désactiver le debug banner (enlever la bande rouge)
        home: accueilPageReporting(),

        //--------------------------------------------------------------------
        // Toutes les routes du projets definir ici
        //--------------------------------------------------------------------
        routes: {
          "/pageGouv": (context) => const accueilPageReporting(),
        });
  }
}

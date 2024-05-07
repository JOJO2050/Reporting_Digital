import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Page%20Acceuil%20Reporting/page_li%C3%A9_a_reporting_accueil/LigneSlogan.dart';
import 'package:url_launcher/url_launcher.dart';

import 'page_lié_a_reporting_accueil/Actualité page/Actualité.dart';
import 'page_lié_a_reporting_accueil/RechercheBarre.dart';
import 'page_lié_a_reporting_accueil/contenuAccueilReporting.dart';
import 'page_lié_a_reporting_accueil/firstLignePageReporting.dart';

import 'page_lié_a_reporting_accueil/pageSlideReporting.dart';

import 'page_lié_a_reporting_accueil/pied_de_page1_Reporting.dart';
import 'page_lié_a_reporting_accueil/pied_de_page2_Reporting.dart';
import 'page_lié_a_reporting_accueil/pied_de_page4_Reporting.dart';
import 'page_lié_a_reporting_accueil/pied_de_page3_Reporting.dart';
import 'page_lié_a_reporting_accueil/secondLinePageReporting.dart';
import 'page_lié_a_reporting_accueil/sous_titre_Reporting.dart';

class accueilPageReporting extends StatefulWidget {
  const accueilPageReporting({super.key});

  @override
  State<accueilPageReporting> createState() => _accueilPageReportingState();
}

class _accueilPageReportingState extends State<accueilPageReporting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  //SizedBox(height: 20),

                  Stack(
                    children: [
                      Image.asset('assets/images/fond_accueil4.jpg'),
                      const Column(
                        children: [
                          SizedBox(
                              height: 60,
                              child: firstLigneReporting()), // prémiere LIGNE
                          Divider(
                              height: 2, color: Colors.black, thickness: 0.2),
                          SizedBox(height: 5),
                          Divider(
                              height: 2, color: Colors.black, thickness: 0.2),
                          SizedBox(height: 60, child: SearchBarre()),
                          SizedBox(height: 5), // second LIGNE
                          SizedBox(height: 40, child: textSlogan()),
                          SizedBox(height: 60, child: secondLigneReporting()),

                          Divider(
                              height: 2, color: Colors.black, thickness: 0.2),
                          SizedBox(height: 4),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/fond_accueil.jpg'),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                photoFond,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          const Divider(
                              height: 2, color: Colors.black, thickness: 0.2),
                          SizedBox(height: 3),
                          const SizedBox(child: sousTitre()),
                          SizedBox(height: 5),
                          const SizedBox(child: slide()),
                          const Divider(
                              height: 10,
                              color: Color.fromARGB(255, 75, 78, 80),
                              thickness: 2),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                        'assets/images/fond_accueil.jpg'),
                                    const Column(
                                      children: [
                                        SizedBox(child: TexteActualite()),
                                        SizedBox(height: 30),
                                        SizedBox(child: piedDePage1()),
                                        SizedBox(height: 20),
                                        SizedBox(child: piedDePage2()),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Image.asset('assets/images/fond_accueil5.jpg'),
                      Column(
                        children: [
                          const Divider(
                              height: 5,
                              color: Color.fromARGB(255, 75, 78, 80),
                              thickness: 2),
                          const SizedBox(height: 10),
                          SizedBox(child: piedDePage3()),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(child: footer2AccueilReporting()),
                ],
              ),

              //

              //
            ],
          ),
        ),
        floatingActionButton: buildShareButton());
  }

  Widget buildShareButton() => FloatingActionButton(
      child: Icon(Icons.picture_as_pdf),
      backgroundColor: Color.fromARGB(255, 136, 103, 54),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      onPressed: () {
        launch(
            'https://groupesifca.com/wp-content/uploads/2022/07/dd_sifca_2013_2014.pdf');
      });
}

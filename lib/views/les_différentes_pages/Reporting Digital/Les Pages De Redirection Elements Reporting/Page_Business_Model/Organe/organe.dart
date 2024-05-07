import 'package:flutter/material.dart';

import '../../../Page Acceuil Reporting/page_lié_a_reporting_accueil/contenuAccueilReporting.dart';
import '../../../Page Acceuil Reporting/page_lié_a_reporting_accueil/grand_titre_Reporting.dart';
import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import '../Schema/ligneShema.dart';
import 'FooterOrgane.dart';
import 'SecondLineOrgane.dart';
import 'firtsLineOrgane.dart';

class OrganePage extends StatefulWidget {
  const OrganePage({super.key});

  @override
  State<OrganePage> createState() => _OrganePageState();
}

class _OrganePageState extends State<OrganePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(height: 60, child: firstLineOrgnane()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineOrgane()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/sifca.png'),
                const Positioned(
                  top: -5,
                  left: 60,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Organe dirigeant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Color.fromARGB(255, 245, 201, 80),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil7.jpg'),
                Column(
                  children: [
                    SizedBox(height: 70, child: ImageDialogButton()),
                    SizedBox(height: 15),

                    // ignore: unnecessary_const
                    Divider(height: 2, color: Colors.black, thickness: 0.2),

                    //const SizedBox(child: slide()),
                    Divider(height: 2, color: Colors.black, thickness: 0.2),
                  ],
                ),
              ],
            ),

            const SizedBox(child: footerOrgane()),
            //

            //
          ],
        ),
      ),
    );
  }
}

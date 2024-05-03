import 'package:flutter/material.dart';

import '../../../Page Acceuil Reporting/page_lié_a_reporting_accueil/contenuAccueilReporting.dart';
import '../../../Page Acceuil Reporting/page_lié_a_reporting_accueil/grand_titre_Reporting.dart';
import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
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
                Image.asset('assets/images/organe.png'),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/fond_accueil7.jpg'),
                const Column(
                  children: [
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

import 'package:flutter/material.dart';

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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 60, child: firstLineOrgnane()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineOrgane()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            /* Stack(
              children: [
                Image.asset(
                  photoFond,
                ),
                const SizedBox(child: grandTitre()),
              ],
            ), */
            SizedBox(height: 15),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            SizedBox(child: footerOrgane()),
            //

            //
          ],
        ),
      ),
    );
  }
}

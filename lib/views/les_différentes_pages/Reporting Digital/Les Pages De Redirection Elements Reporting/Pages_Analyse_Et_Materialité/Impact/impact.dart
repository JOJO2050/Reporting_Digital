import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';

import 'FooterImpact.dart';
import 'SecondLineImpact.dart';
import 'firtsLineImpact.dart';

class ImpactPage extends StatefulWidget {
  const ImpactPage({super.key});

  @override
  State<ImpactPage> createState() => _ImpactPageState();
}

class _ImpactPageState extends State<ImpactPage> {
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
                SizedBox(height: 60, child: firstLineImpact()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineImpact()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            SizedBox(height: 15),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            SizedBox(child: footerImpact()),
            //

            //
          ],
        ),
      ),
    );
  }
}

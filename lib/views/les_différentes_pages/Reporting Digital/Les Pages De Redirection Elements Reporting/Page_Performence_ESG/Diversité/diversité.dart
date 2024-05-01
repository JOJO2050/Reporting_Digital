import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterDiversite.dart';
import 'SecondLineDiversite.dart';
import 'firtsLineDiversite.dart';

class DiversitelPage extends StatefulWidget {
  const DiversitelPage({super.key});

  @override
  State<DiversitelPage> createState() => _DiversitelPageState();
}

class _DiversitelPageState extends State<DiversitelPage> {
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
                SizedBox(height: 60, child: firstLineDiversitel()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineDiversitel()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            SizedBox(height: 15),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            SizedBox(child: footerDiversitel()),
            //

            //
          ],
        ),
      ),
    );
  }
}

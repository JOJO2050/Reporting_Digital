import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterReconnaissance.dart';
import 'SecondLineReconnaissance.dart';
import 'firtsLineReconnaissance.dart';

class ReconnaissancePage extends StatefulWidget {
  const ReconnaissancePage({super.key});

  @override
  State<ReconnaissancePage> createState() => _ReconnaissancePageState();
}

class _ReconnaissancePageState extends State<ReconnaissancePage> {
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
                SizedBox(height: 60, child: firstLineReconnaissance()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineReconnaissance()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            SizedBox(height: 15),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            SizedBox(child: footerReconnaissance()),
            //

            //
          ],
        ),
      ),
    );
  }
}

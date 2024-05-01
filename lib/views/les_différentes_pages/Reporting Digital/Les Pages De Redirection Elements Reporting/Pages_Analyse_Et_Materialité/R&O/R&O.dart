import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';

import 'FooterR&O.dart';
import 'SecondLineR&O.dart';

import 'firtsLineR&O.dart';

class RetOPage extends StatefulWidget {
  const RetOPage({super.key});

  @override
  State<RetOPage> createState() => _RetOPageState();
}

class _RetOPageState extends State<RetOPage> {
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
                SizedBox(height: 60, child: firstLinePartieRetO()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineRetO()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            SizedBox(height: 15),

            Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            Divider(height: 2, color: Colors.black, thickness: 0.2),

            SizedBox(child: footerPartieRetO()),
            //

            //
          ],
        ),
      ),
    );
  }
}

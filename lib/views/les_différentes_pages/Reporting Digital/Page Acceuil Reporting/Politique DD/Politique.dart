import 'package:flutter/material.dart';
import '../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';

import 'FooterPolitique.dart';
import 'SecondLinePolitique.dart';
import 'firtsLinePolitique.dart';

class PolitiquePage extends StatefulWidget {
  const PolitiquePage({super.key});

  @override
  State<PolitiquePage> createState() => _PolitiquePageState();
}

class _PolitiquePageState extends State<PolitiquePage> {
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
                SizedBox(height: 60, child: firstLinePolitique()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                const SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLinePolitique()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/images/pop10.jpg'),
              ],
            ),

            const SizedBox(height: 15),

            const Divider(height: 2, color: Colors.black, thickness: 0.2),

            //const SizedBox(child: slide()),
            const Divider(height: 2, color: Colors.black, thickness: 0.2),

            const SizedBox(child: footerPolitique()),
            //

            //
          ],
        ),
      ),
    );
  }
}

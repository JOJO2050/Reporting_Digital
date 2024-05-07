import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterMethodologie.dart';
import 'SecondLineMethodologie.dart';
import 'firtsLineMethodologie.dart';

class MethodologiePage extends StatefulWidget {
  const MethodologiePage({super.key});

  @override
  State<MethodologiePage> createState() => _MethodologiePageState();
}

class _MethodologiePageState extends State<MethodologiePage> {
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
                SizedBox(height: 60, child: firstLineMethodologie()),
                const Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineMethodologie()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            Stack(
              children: [
                Image.asset('assets/images/livre.jpg'),
                const Positioned(
                  top: -5,
                  left: 40,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Méthodologie et protocole du reporting",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
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

            const SizedBox(child: footerMethodologie()),
            //

            //
          ],
        ),
      ),
    );
  }
}

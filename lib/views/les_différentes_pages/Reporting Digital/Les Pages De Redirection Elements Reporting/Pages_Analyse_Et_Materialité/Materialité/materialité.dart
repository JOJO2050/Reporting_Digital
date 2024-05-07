import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterMaterialite.dart';
import 'SecondLineMaterialite.dart';
import 'firtsLineMaterialite.dart';

class MaterialitePage extends StatefulWidget {
  const MaterialitePage({super.key});

  @override
  State<MaterialitePage> createState() => _MaterialitePageState();
}

class _MaterialitePageState extends State<MaterialitePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 60, child: firstLineMaterialite()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineMaterialite()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
              ],
            ),

            Stack(
              children: [
                Image.asset('assets/images/sifca.png'),
                const Positioned(
                  top: -5,
                  left: 70,
                  bottom: 5,
                  child: Center(
                    child: Text(
                      "Matérialité",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
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

            SizedBox(child: footerMaterialite()),
            //

            //
          ],
        ),
      ),
    );
  }
}

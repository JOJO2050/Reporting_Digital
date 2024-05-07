import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'FooterCommuaute.dart';
import 'SecondLineCommuaute.dart';
import 'firtsLineCommuaute.dart';

class CommuautelPage extends StatefulWidget {
  const CommuautelPage({super.key});

  @override
  State<CommuautelPage> createState() => _CommuautelPageState();
}

class _CommuautelPageState extends State<CommuautelPage> {
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
                SizedBox(height: 60, child: firstLineCommuaute()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineCommuaute()),
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
                      "Communauté et développement",
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

            SizedBox(child: footerCommuaute()),
            //

            //
          ],
        ),
      ),
    );
  }
}

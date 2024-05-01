import 'package:flutter/material.dart';

import '../../../la_page_accueil/page_lié_a_accueil/BarreRechercheReporting.dart';
import 'Footerschema.dart';
import 'SecondLineschema.dart';
import 'firtsLineschema.dart';

class SchemaPage extends StatefulWidget {
  const SchemaPage({super.key});

  @override
  State<SchemaPage> createState() => _SchemaPageState();
}

class _SchemaPageState extends State<SchemaPage> {
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
                SizedBox(height: 60, child: firstLineschema()),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 60, child: SearchBarreReporting()),
                SizedBox(height: 10),
                Divider(height: 2, color: Colors.black, thickness: 0.2),
                SizedBox(height: 70, child: secondLineschema()),
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

            SizedBox(child: footerschema()),
            //

            //
          ],
        ),
      ),
    );
  }
}

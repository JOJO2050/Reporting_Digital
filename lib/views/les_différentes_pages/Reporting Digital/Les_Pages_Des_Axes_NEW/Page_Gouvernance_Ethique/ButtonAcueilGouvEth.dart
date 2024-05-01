import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les_Pages_Des_Axes_NEW/Page_Gouvernance_Ethique/AccueilGouvern.dart';

class buttonaAccueilGouvEth extends StatefulWidget {
  @override
  _buttonaAccueilGouvEthState createState() => _buttonaAccueilGouvEthState();
}

class _buttonaAccueilGouvEthState extends State<buttonaAccueilGouvEth> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // Position de l'ombre (X, Y)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const newPageAcueilleGouvEth()));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) => _isHovered
                  ? const Color.fromARGB(255, 14, 13, 114)
                  : Color.fromARGB(255, 69, 70, 69),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              '         Gouvernance Ethqiue         ',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

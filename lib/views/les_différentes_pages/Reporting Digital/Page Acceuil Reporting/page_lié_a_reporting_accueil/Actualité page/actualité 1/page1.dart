import 'package:flutter/material.dart';

import 'page2.dart';

class firstButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageActualite1()),
        );
      },
      child: Text('Voir plus'),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

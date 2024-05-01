import 'package:flutter/material.dart';

import 'page8.dart';

class fourthButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageActualite4()),
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

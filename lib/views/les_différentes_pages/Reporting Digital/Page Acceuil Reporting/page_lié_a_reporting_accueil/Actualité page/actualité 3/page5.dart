import 'package:flutter/material.dart';

import 'page6.dart';

class thirdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageActualite3()),
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

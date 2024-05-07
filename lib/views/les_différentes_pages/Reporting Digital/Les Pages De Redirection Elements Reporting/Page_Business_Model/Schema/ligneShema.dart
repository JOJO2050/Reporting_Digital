import 'package:flutter/material.dart';

class ImageDialogButton extends StatefulWidget {
  @override
  _ImageDialogButtonState createState() => _ImageDialogButtonState();
}

class _ImageDialogButtonState extends State<ImageDialogButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Image.asset(
                'assets/images/show2.jpg',
              ),
            );
          },
        );
      },
      child: Text("feuille de route"),
    );
  }
}

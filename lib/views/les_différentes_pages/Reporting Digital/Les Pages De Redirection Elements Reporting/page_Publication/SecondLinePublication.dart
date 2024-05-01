import 'package:flutter/material.dart';

class secondLinePublication extends StatefulWidget {
  const secondLinePublication({super.key});

  @override
  State<secondLinePublication> createState() => _secondLinePublicationState();
}

class _secondLinePublicationState extends State<secondLinePublication> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          /* children: [
          const SizedBox(width: 40),
          SizedBox(child: buttonDue()),
          const SizedBox(width: 40),
          SizedBox(child: buttonMethodologie()),
          const SizedBox(width: 40),
          SizedBox(child: buttonReconnaissance()),
          const SizedBox(width: 40),
          SizedBox(child: buttonPerimetre()),
          const SizedBox(width: 60),
        ], */
          ),
    );
  }
}

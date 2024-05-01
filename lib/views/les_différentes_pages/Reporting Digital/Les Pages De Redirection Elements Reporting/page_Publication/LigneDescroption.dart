import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class ligneDescriptionPublication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ParagraphLine(
            "A travers notre reporting RSE, les mesures de performance du Groupe, en termes de  résultats  économiques  environnementaux  et  sociaux, sont"),
        ParagraphLine("présentées en toute transparence. "),
        ParagraphLine(
            "Ce reporting, qui couvre tous les secteurs d’activités du Groupe, résulte d’une consolidation de données collectées auprès de chaque contributeurs."),
        ParagraphLine(
            "Ces données consolidées sont par  la  suite  soumises  à  des  tests  de  cohérence  effectués   par  la  collectées  auprès  de chaque contributeurs."),
        ParagraphLine(
            "Ces  données  consolidées  sont  par  la  suite  soumises  à  des  tests  de cohérence  effectués par la Direction Communication  et Développement"),
        ParagraphLine("Durable Groupe."),
        ParagraphLine(
            "Nos référentiels de reporting sont formalisés dans nos livrets ci-dessous:"),
      ],
    );
  }
}

class ParagraphLine extends StatelessWidget {
  final String text;

  ParagraphLine(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

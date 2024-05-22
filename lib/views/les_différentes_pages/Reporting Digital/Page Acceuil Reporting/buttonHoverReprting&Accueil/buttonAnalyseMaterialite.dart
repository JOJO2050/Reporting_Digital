import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/R&O/R&O.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/Contexte/contexte.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/Impact/impact.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/Materialit%C3%A9/materialit%C3%A9.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Pages_Analyse_Et_Materialit%C3%A9/Partie/partie.dart';

class buttonAnalyseMaterialite extends StatefulWidget {
  @override
  _buttonAnalyseMaterialiteState createState() =>
      _buttonAnalyseMaterialiteState();
}

class _buttonAnalyseMaterialiteState extends State<buttonAnalyseMaterialite> {
  bool _isHovered = false;
  GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        _showMenu();
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
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: _isHovered
            ? ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return const Color.fromARGB(255, 14, 13, 114);
                    },
                  ),
                ),
                child: PopupMenuButton<String>(
                  key: _menuKey,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Contexte'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContextePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Partie prenante"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PartiePrenantePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text('R&O (Risque et Opportunité)'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RetOPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Impacts"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImpactPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Materialité"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MaterialitePage()),
                        );
                      },
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Analyse et Materialité',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return const Color.fromARGB(255, 14, 13, 114);
                    },
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Analyse et Materialité',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void _showMenu() {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final Offset position =
        button.localToGlobal(Offset.zero, ancestor: overlay);
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + button.size.height,
        position.dx + button.size.width,
        position.dy + button.size.height * 2,
      ),
      items: [
        PopupMenuItem(
          child: Text('Contexte'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContextePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Parties prenantes"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PartiePrenantePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text('R&O (Risques et Opportunités)'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RetOPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Impacts"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImpactPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Materialité"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MaterialitePage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

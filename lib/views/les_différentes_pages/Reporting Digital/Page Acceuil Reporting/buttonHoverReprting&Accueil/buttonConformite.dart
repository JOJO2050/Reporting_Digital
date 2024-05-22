import 'package:flutter/material.dart';

import '../../Les Pages De Redirection Elements Reporting/Page_Conformité_de_Reporting/Due/due.dart';
import '../../Les Pages De Redirection Elements Reporting/Page_Conformité_de_Reporting/Indexe/indexe.dart';
import '../../Les Pages De Redirection Elements Reporting/Page_Conformité_de_Reporting/Methodologie/méthodologie.dart';
import '../../Les Pages De Redirection Elements Reporting/Page_Conformité_de_Reporting/Perimetre/périmetre.dart';
import '../../Les Pages De Redirection Elements Reporting/Page_Conformité_de_Reporting/Reconnaissance/reconnaissance.dart';

class buttonConformite extends StatefulWidget {
  @override
  _buttonConformiteState createState() => _buttonConformiteState();
}

class _buttonConformiteState extends State<buttonConformite> {
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
                      return const Color.fromARGB(255, 62, 73, 83);
                    },
                  ),
                ),
                child: PopupMenuButton<String>(
                  key: _menuKey,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('DUE dialogue'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DuePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Méthodologie et protocole du reporting"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MethodologiePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Reconnaissance et vérification'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReconnaissancePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Indexe (CRS, CRJ, ODD)"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IndexePage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Périmetre"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PerimetrePage()),
                        );
                      },
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Conformité de reporting',
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
                    'Conformité de reporting',
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
          child: Text('Duediligeance'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DuePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Méthodologie et protocole du reporting"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MethodologiePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text('Reconnaissance et vérification'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReconnaissancePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Indexe (CRSD, GRI, ODD)"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndexePage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Périmetre"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PerimetrePage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

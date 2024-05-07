import 'package:flutter/material.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Capital/capital.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Climat/climat.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Communaut%C3%A9/communaut%C3%A9.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Diversit%C3%A9/diversit%C3%A9.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Environnement/environnement.dart';
import 'package:flutter_application/views/les_diff%C3%A9rentes_pages/Reporting%20Digital/Les%20Pages%20De%20Redirection%20Elements%20Reporting/Page_Performence_ESG/Odd/odd.dart';

class buttonPerformanceEsg extends StatefulWidget {
  @override
  _buttonPerformanceEsgState createState() => _buttonPerformanceEsgState();
}

class _buttonPerformanceEsgState extends State<buttonPerformanceEsg> {
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
                      child: Text('Diversité des dirigeants'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiversitelPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Environnement"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnvironnementPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text('Capital'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CapitalPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Communauté et développement"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommuautelPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Climat et impact carbone"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClimatlPage()),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("ODD"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OddPage()),
                        );
                      },
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Performence ESG',
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
                    'Performence ESG',
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
          child: Text('Diversité des dirigeants'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DiversitelPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Environnement"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EnvironnementPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text('Capital'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CapitalPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Communauté et développement"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CommuautelPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("Climat et impact carbone"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClimatlPage(),
              ),
            );
          },
        ),
        PopupMenuItem(
          child: Text("ODD"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OddPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

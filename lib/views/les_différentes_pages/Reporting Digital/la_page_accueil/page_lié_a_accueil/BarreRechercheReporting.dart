import 'package:flutter/material.dart';

class SearchBarreReporting extends StatefulWidget {
  const SearchBarreReporting({super.key});

  @override
  State<SearchBarreReporting> createState() => _SearchBarreReportingState();
}

class _SearchBarreReportingState extends State<SearchBarreReporting> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[500],
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Recherche...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

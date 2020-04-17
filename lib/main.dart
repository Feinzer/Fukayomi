import 'package:flutter/material.dart';

// Pages
import 'package:fukayomi/pages/library.dart';

void main() => runApp(MangaApp());

class MangaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LibraryPage(),
    );
  }
}

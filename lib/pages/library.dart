import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fukayomi/internal/data_provider.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  AppDataProvider appData;

  @override
  Widget build(BuildContext context) {
    appData = Provider.of<AppDataProvider>(context);

    return Scaffold(
    );
  }
}
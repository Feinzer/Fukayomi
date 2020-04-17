import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {

    Brightness _themeBrightness = Theme.of(context).brightness;
    Brightness _statusBarBrightness = _themeBrightness == Brightness.light
        ? Brightness.dark
        : Brightness.light;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: _statusBarBrightness,
      statusBarIconBrightness: _statusBarBrightness,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: _themeBrightness,
      systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
    ));

    return Container(
      
    );
  }
}

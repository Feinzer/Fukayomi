import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import 'package:fukayomi/internal/providers/theme_provider.dart';

// Pages
import 'package:fukayomi/pages/library.dart';

void main() => runApp(MangaApp());

class MangaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Fukayomi',
          home: LibraryPage(),
          theme: themeProvider.appTheme,
          darkTheme: themeProvider.darkTheme,
        );
      }),
    );
  }
}

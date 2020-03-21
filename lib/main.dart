import 'package:flutter/material.dart';
import 'package:fukayomi/pages/library.dart';
import 'package:fukayomi/ui/themes.dart';
import 'package:provider/provider.dart';

import 'package:fukayomi/internal/data_provider.dart';

void main() => runApp(MangaApp());

AppDataProvider appData;

class MangaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppDataProvider>.value(
          value: AppDataProvider(),
          ),
      ],

      child: Builder(
        builder: (context){
          appData = Provider.of<AppDataProvider>(context);
          ThemeData customTheme;
          ThemeData darkTheme;

          darkTheme = appData.useBlackTheme ? AppTheme.black(appData) :
                                              AppTheme.dark(appData);
                                                
          customTheme = appData.useDarkTheme ? darkTheme :
                                               AppTheme.white(appData);

          return MaterialApp(
            title: "Fukayomi",
            home: LibraryPage(),
            theme: appData.useSystemTheme ? AppTheme.white(appData) :
                                            customTheme,
            darkTheme: appData.useSystemTheme ? darkTheme :
                                                customTheme,
          );
        },
      ),
    );
  }
}

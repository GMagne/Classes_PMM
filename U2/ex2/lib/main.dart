import 'package:ex2/routes.dart';
import 'package:ex2/screens/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Hem anat a: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
    );
  }
}

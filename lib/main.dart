import 'package:flutter/material.dart';
import 'package:plx/globals.dart';
import 'package:plx/pages/home.dart';
import 'package:plx/pages/settings.dart';
import 'package:plx/pages/supports.dart';
import 'package:plx/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: myAppTitle,
      theme: AppTheme.lightTheme,
      //ThemeData(primarySwatch: Colors.blue[900],),
      /*home: HomePage(
          title: myAppTitle,
        )*/
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(
              title: myAppTitle,
            ),
        '/settings': (context) => Settings(
              title: myAppTitle,
            ),
        '/supports': (context) => Supports(
              title: myAppTitle,
            ),
      },
    );
  }
}

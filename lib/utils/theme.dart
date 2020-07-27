import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const String _fontFamily = 'Comfortaa-VariableFont_wght';

  static Color _iconColor = Colors.blueAccent.shade200;

  static const Color _primary = Colors.white;
  static const Color _primaryVariant = Colors.white; // main background
  static const Color _secondary = Color(0xff3700b3); //Colors.grey;
  static const Color _secondaryVariant = Colors.blueGrey;
  static const Color _surface = Colors.white;
  static const Color _background = Colors.white;

  static const Color _onPrimary = Color(0xff3700b3); // icons, buttons, drwer
  static const Color _onSecondary = Color(0xff3700b3);
  static const Color _onSurface = Color(0xff3700b3);
  static const Color _onBackground = Color(0xff3700b3);

  static const Color _error = Color(0xffb00020);

  static const Color _onError = Colors.white;
  //static const Color _brightness = Brightness.light;

  static final TextStyle _headline1 =
      TextStyle(fontFamily: _fontFamily, color: _primary);
  static final TextStyle _headline2 =
      TextStyle(fontFamily: _fontFamily, color: _primary);
  static final TextStyle _headline3 =
      TextStyle(fontFamily: _fontFamily, color: _primary);
  static final TextStyle _headline4 =
      TextStyle(fontFamily: _fontFamily, color: _primary);
  static final TextStyle _headline5 =
      TextStyle(fontFamily: _fontFamily, color: _primary);
  static final TextStyle _headline6 =
      TextStyle(fontFamily: _fontFamily, color: _primary);

  static final TextStyle _subtitle1 =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);
  static final TextStyle _subtitle2 =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);

  static final TextStyle _bodyText1 =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);
  static final TextStyle _bodyText2 =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);

  static final TextStyle _caption =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);
  static final TextStyle _button =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);
  static final TextStyle _overline =
      TextStyle(fontFamily: _fontFamily, color: _onPrimary);

  static final TextTheme _textTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
    caption: _caption,
    button: _button,
    overline: _overline,
  );

  static final ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.light(
      primary: _primary,
      primaryVariant: _primaryVariant,
      secondary: _secondary,
      secondaryVariant: _secondaryVariant,
      surface: _surface,
      background: _background,
      error: _error,
      onPrimary: _onPrimary,
      onSecondary: _onSecondary,
      onSurface: _onSurface,
      onBackground: _onBackground,
      onError: _onError,
      brightness: Brightness.light,
    ),

    textTheme: _textTheme,

    // widgets
    scaffoldBackgroundColor: _primaryVariant,

    appBarTheme: AppBarTheme(
      color: _onPrimary,
      iconTheme: IconThemeData(color: _primary),
    ),

    iconTheme: IconThemeData(
      color: _iconColor,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: _primary,
      backgroundColor: _onPrimary,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: _onPrimary,
      unselectedLabelColor: _primary,
    ),

    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: _onPrimary,
        borderRadius: BorderRadius.circular(5),
      ),
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: _onPrimary,
    ),

    cardTheme: CardTheme(
      margin: EdgeInsets.all(12.0),
      elevation: 5,
      shadowColor: _onPrimary,
    ),
  );
}

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class DefaultTheme {
  DefaultTheme._();

  //font
  static final String _defaultFont = GoogleFonts.mavenPro().fontFamily!;

  //elevation
  static const double _buttonElevation = 4.0;
  static const double _appBarElevation = 4.0;

  //light colors
  static final Color _lightBackground = Color(0xFFededed);
  static final Color _textColor = Color(0xFF5c5b5b);
  static final Color _primaryColor = Color(0xFF5DD39E);
  static final Color _splashColor = _primaryColor.withAlpha(50);
  static final Color _canvasColor = _primaryColor;

  //dark colors
  static final Color _darkBackground = Color(0xFF171717);
  static final Color _textDarkColor = Color(0xFFBEBEBE);
  static final Color _primaryDarkColor = _primaryColor;
  static final Color _splashDarkColor = _splashColor;
  static final Color _bordersDark = _primaryColor.withAlpha(200);
  static final Color _disableBorderDark = _primaryColor.withAlpha(50);
  static final Color _canvasDarkColor = _primaryColor;

  //material colors
  static final MaterialColor _materialPrimaryColor = MaterialColor(_primaryColor.value, {
    50: Color(0xFFEAFFF6),
    100: Color(0xFFCBFFEA),
    200: Color(0xFFA9FFDC),
    300: Color(0xFF86FFCD),
    400: Color(0xFF6CFFC3),
    500: _primaryColor,
    600: Color(0xFF4BFFB1),
    700: Color(0xFF41FFA8),
    800: Color(0xFF38FFA0),
    900: Color(0xFF28FF91),
  });

  //border colors
  static final Color _dangerBorder = Color(0xFFd9534f);
  static final Color _defaultBorder = Color(0xFFd3d3d3);

  //borders radius
  static final BorderRadius _defaultRadius = BorderRadius.circular(8);

  //shareable styles
  static final InputDecorationTheme _inputTheme = InputDecorationTheme(
      labelStyle: TextStyle(
          color: _primaryColor,
          fontFamily: _defaultFont,
          fontWeight: FontWeight.w600),
      alignLabelWithHint: true,
      hintStyle: TextStyle(
          color: _primaryColor.withOpacity(0.5),
          fontFamily: _defaultFont,
          fontWeight: FontWeight.w800),
      prefixIconColor: _primaryColor,
      prefixStyle: TextStyle(
          color: _primaryColor,
          fontFamily: _defaultFont,
          fontWeight: FontWeight.w800,
          leadingDistribution: TextLeadingDistribution.proportional),
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      border: OutlineInputBorder(
          borderRadius: _defaultRadius,
          borderSide: BorderSide(color: _primaryColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: _defaultRadius,
          borderSide: BorderSide(color: _dangerBorder)),
      enabledBorder: OutlineInputBorder(
          borderRadius: _defaultRadius,
          borderSide: BorderSide(color: _defaultBorder)),
      focusedBorder: OutlineInputBorder(
          borderRadius: _defaultRadius,
          borderSide: BorderSide(color: _primaryColor)),
      disabledBorder: OutlineInputBorder(
          borderRadius: _defaultRadius,
          borderSide: BorderSide(color: _primaryColor.withOpacity(0.2))));
  static final AppBarTheme _appBarTheme = AppBarTheme(
      backgroundColor: _primaryColor,
      elevation: _appBarElevation,
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: _defaultFont,
          fontSize: 20,
          fontWeight: FontWeight.w600));

  static final ButtonThemeData _buttonTheme = ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: _primaryColor,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        borderRadius: _defaultRadius,
      ));

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: _primaryColor,
              elevation: _buttonElevation,
              onPrimary: Colors.white,
              onSurface: _primaryColor,
              textStyle: TextStyle(
                  fontFamily: _defaultFont, fontWeight: FontWeight.w600),
              minimumSize: Size(88, 36),
              shape: RoundedRectangleBorder(
                borderRadius: _defaultRadius,
              )));

  static final TextButtonThemeData _textButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
          primary: _primaryColor,
          onSurface: _primaryColor,
          textStyle: TextStyle(
              color: _primaryColor,
              fontFamily: _defaultFont,
              fontWeight: FontWeight.w600),
          minimumSize: Size(88, 36),
          shape: RoundedRectangleBorder(
            borderRadius: _defaultRadius,
          )));

  static final OutlinedButtonThemeData _outlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        primary: _primaryColor,
        onSurface: _primaryColor,
        textStyle: TextStyle(
            color: _primaryColor,
            fontFamily: _defaultFont,
            fontWeight: FontWeight.w600),
        minimumSize: Size(88, 36),
        shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
        side: BorderSide(color: _primaryColor, width: 2)),
  );

  static final IconThemeData _iconTheme =
      IconThemeData(color: _primaryColor, opacity: 1);
  static final ProgressIndicatorThemeData _progressIndicatorTheme =
      ProgressIndicatorThemeData(
    color: _primaryColor,
    refreshBackgroundColor: _primaryColor.withOpacity(0.3),
    circularTrackColor: _primaryColor.withOpacity(0.3),
    linearTrackColor: _primaryColor.withOpacity(0.3),
  );
  static final SnackBarThemeData _snackBarTheme = SnackBarThemeData(
      backgroundColor: _primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating);

  static final ChipThemeData _chipTheme = ChipThemeData(
    labelStyle:
        TextStyle(fontFamily: _defaultFont, fontWeight: FontWeight.w600),
  );

  //text theme
  static final TextTheme _textTheme = TextTheme(
      headline1: TextStyle(color: _textColor),
      headline2: TextStyle(color: _textColor),
      headline3: TextStyle(color: _textColor),
      headline4: TextStyle(color: _textColor),
      headline5: TextStyle(color: _textColor),
      headline6: TextStyle(color: _textColor),
      bodyText1: TextStyle(color: _textColor),
      bodyText2: TextStyle(color: _textColor));
  //dark text theme
  static final TextTheme _textDarkTheme = TextTheme(
      headline1: TextStyle(color: _textDarkColor),
      headline2: TextStyle(color: _textDarkColor),
      headline3: TextStyle(color: _textDarkColor),
      headline4: TextStyle(color: _textDarkColor),
      headline5: TextStyle(color: _textDarkColor),
      headline6: TextStyle(color: _textDarkColor),
      bodyText1: TextStyle(color: _textDarkColor),
      bodyText2: TextStyle(color: _textDarkColor));

  //light theme
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: _lightBackground,
      primaryColorLight: _primaryColor,
      primaryColor: _primaryColor,
      primaryColorDark: _primaryColor,
      canvasColor: _canvasColor,
      primarySwatch: _materialPrimaryColor,
      splashColor: _splashColor,
      snackBarTheme: _snackBarTheme,
      textTheme: _textTheme,
      appBarTheme: _appBarTheme,
      fontFamily: _defaultFont,
      toggleableActiveColor: _primaryColor,
      buttonTheme: _buttonTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      iconTheme: _iconTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      inputDecorationTheme: _inputTheme,
      chipTheme: _chipTheme);

  //dark theme
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: _darkBackground,
      primaryColorLight: _primaryDarkColor,
      primaryColor: _primaryDarkColor,
      primaryColorDark: _primaryDarkColor,
      canvasColor: _canvasDarkColor,
      primarySwatch: _materialPrimaryColor,
      splashColor: _splashDarkColor,
      snackBarTheme: _snackBarTheme,
      textTheme: _textDarkTheme,
      appBarTheme: _appBarTheme,
      fontFamily: _defaultFont,
      toggleableActiveColor: _primaryColor,
      buttonTheme: _buttonTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      iconTheme: _iconTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      inputDecorationTheme: _inputTheme.copyWith(
          border: OutlineInputBorder(
            borderRadius: _defaultRadius,
            borderSide: BorderSide(color: _bordersDark),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: _defaultRadius,
              borderSide: BorderSide(color: _disableBorderDark)),
          enabledBorder: OutlineInputBorder(
              borderRadius: _defaultRadius,
              borderSide: BorderSide(color: _bordersDark))),
      chipTheme: _chipTheme);
}

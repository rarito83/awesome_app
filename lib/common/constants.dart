import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String baseUrl = 'https://api.pexels.com/v1/';
const String apiKey =
    '563492ad6f91700001000001e37d74c19b6c493d989b7f8b4d4e91aa';

// colors
const Color colorRichBlack = Color(0xFF000814);
const Color colorOxfordBlue = Color(0xFF001D3D);
const Color colorPrussianBlue = Color(0xFF003566);
const Color colorMikadoYellow = Color(0xFFffc300);
const Color colorDavysGrey = Color(0xFF4B5358);
const Color colorGrey = Color(0xFF303030);

// text style
final TextStyle mHeading5 =
    GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400);
final TextStyle mHeading6 = GoogleFonts.poppins(
    fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15);
final TextStyle mSubtitle = GoogleFonts.poppins(
    fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15);
final TextStyle mBodyText = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25);

final myTextTheme = TextTheme(
  headline5: mHeading5,
  headline6: mHeading6,
  subtitle1: mSubtitle,
  bodyText2: mBodyText,
);

const myColorScheme = ColorScheme(
  primary: colorMikadoYellow,
  primaryVariant: colorMikadoYellow,
  secondary: colorPrussianBlue,
  secondaryVariant: colorPrussianBlue,
  surface: colorRichBlack,
  background: colorRichBlack,
  error: Colors.red,
  onPrimary: colorRichBlack,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.white,
  brightness: Brightness.dark,
);

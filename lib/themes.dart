import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';

final AppTheme kDayTheme = AppTheme.light(id: 'day');
final AppTheme kNightTheme = AppTheme.dark(id: 'night');

TextStyle kHomemadeAppleTextStyle(BuildContext context,
    {double opacity = 1.0}) {
  final themeFontMap = {
    'day': GoogleFonts.homemadeApple(color: Colors.black.withOpacity(opacity)),
    'night':
        GoogleFonts.homemadeApple(color: Colors.white.withOpacity(opacity)),
  };
  return themeFontMap[ThemeProvider.themeOf(context).id]!;
}

TextStyle kEpilogueTextStyle(BuildContext context, {double opacity = 1.0}) {
  final themeFontMap = {
    'day': GoogleFonts.epilogue(color: Colors.black.withOpacity(opacity)),
    'night': GoogleFonts.epilogue(color: Colors.white.withOpacity(opacity)),
  };
  return themeFontMap[ThemeProvider.themeOf(context).id]!;
}

TextStyle kSpaceMonoTextStyle(BuildContext context, {double opacity = 1.0}) {
  final themeFontMap = {
    'day': GoogleFonts.spaceMono(color: Colors.black.withOpacity(opacity)),
    'night': GoogleFonts.spaceMono(color: Colors.white.withOpacity(opacity)),
  };
  return themeFontMap[ThemeProvider.themeOf(context).id]!;
}

TextStyle kNeonFutureTextStyle(BuildContext context, {double opacity = 1.0}) {
  final themeFontMap = {
    'day': TextStyle(
        color: Colors.black.withOpacity(opacity), fontFamily: 'Neon Future'),
    'night': TextStyle(
        color: Colors.white.withOpacity(opacity), fontFamily: 'Neon Future'),
  };
  return themeFontMap[ThemeProvider.themeOf(context).id]!;
}

Color kWhiteBlackAccentByTheme(BuildContext context, {double opacity = 1.0}) {
  final themeColorMap = {
    'day': Colors.black.withOpacity(opacity),
    'night': Colors.white.withOpacity(opacity),
  };
  return themeColorMap[ThemeProvider.themeOf(context).id]!;
}

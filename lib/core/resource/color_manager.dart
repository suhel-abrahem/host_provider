import 'package:flutter/material.dart';

class ColorManager {
  // Refined Cashier Green Theme
  static const MaterialColor primarySwatch =
      MaterialColor(0xFF388E3C, <int, Color>{
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      });

  // Primary Colors
  static const Color primaryColor = Color.fromARGB(255, 31, 153, 209);
  static Color primaryColorLight = primaryColor.withValues(alpha: 0.25);

  // Accent Colors
  static const Color accentColor = Color(0xFF388E3C); // Accent Green
  static const Color secondaryAccentColor = Color(0xFF1B5E20); // Dark Green
  static const Color highlightColor = Color(
    0xFF00C853,
  ); // Bright Green Highlight

  // Supporting Colors
  static const Color primaryContainerColor = Color.fromARGB(
    255,
    236,
    248,
    221,
  ); // Soft Green Background
  static const Color borderColor = Color(0xFFB0BEC5); // Soft Gray
  static const Color shadowColor = Color(0xFF9E9E9E); // Mid Gray
  static const Color lightShadowColor = Color(0xFFCFD8DC); // Light Gray

  // Background and Surfaces
  static const Color backgroundColor = Color.fromARGB(
    255,
    204,
    204,
    204,
  ); // Bright Neutral Background
  static const Color cardColor = Color(0xFFFFFFFF); // White Cards
  static const Color surfaceColor = Color(0xFFFAFAFA); // Very Light Surface

  // Text Colors
  static const Color textColor = Color.fromARGB(255, 3, 3, 3); // Near Black
  static const Color secondaryTextColor = Color.fromARGB(
    255,
    36,
    34,
    34,
  ); // Medium Gray

  // Functional Colors
  static const Color successColor = Color(0xFF43A047); // Confirmed Green
  static const Color warningColor = Color(0xFFFFA726); // Orange Warning
  static const Color error = Color(0xFFD32F2F); // Clear Red
  static const Color logout = Color(0xFFB71C1C); // Deep Red
  static const Color disabledColor = Color.fromARGB(
    255,
    102,
    102,
    102,
  ); // Gray Disabled
  static const Color disabledTextColor = Color(
    0xFF9E9E9E,
  ); // Soft Disabled Text

  // Dark Mode Colors
  static const Color darkBackground = Color(0xFF121212); // Dark
  static const Color darkCardColor = Color(0xFF1E1E1E); // Dark Card
  static const Color darkSurfaceColor = Color(0xFF2C2C2C); // Dark Surface
  static const Color darkTextColor = Color(0xFFF5F5F5); // dark Text
  static const Color darkSecondaryTextColor = Color.fromARGB(
    255,
    46,
    45,
    45,
  ); // Secondary
  static const Color darkPrimaryContainerColor = Color.fromARGB(
    255,
    42,
    42,
    42,
  ); //
  // Special Highlight Colors
  static const Color focusColor = Color(0xFF66BB6A); // Softer Green Focus
}

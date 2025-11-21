import 'dart:ui';

import 'language_constant.dart';

class FontConstants {
  static String fontFamily(Locale? locale) {
    locale ??= LanguageConstant.arLoacle;
    return locale == LanguageConstant.enLoacle
        ? poppinsFontFamily
        : amiriFontFamily;
  }

  static const String poppinsFontFamily = "Poppins";
  static const String mirzaFontFamily = "Mirza";
  static const String amiriFontFamily = "Amiri";
}

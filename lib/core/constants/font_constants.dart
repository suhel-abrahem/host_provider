import 'dart:ui';

import 'package:hosta_provider/core/constants/language_constant.dart';

class FontConstants {
  static String fontFamily(Locale? locale) {
    locale ??= LanguageConstant.arLoacle;
    return locale == LanguageConstant.enLoacle
        ? poppinsFontFamily
        : mirzaFontFamily;
  }

  static const String poppinsFontFamily = "Poppins";
  static const String mirzaFontFamily = "Mirza";
}

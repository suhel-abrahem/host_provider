import 'package:flutter/widgets.dart';

class LanguageConstant {
  static const String path = 'assets/translations';
  static const Locale arLoacle = Locale("ar");
  static const Locale enLoacle = Locale("en");
  static const Locale faLocale = Locale("fa");
  static const List<Locale> supportedLocales = [arLoacle, enLoacle, faLocale];

  static const String ar = 'ar';
  static const String en = 'en';
  static const String fa = 'fa';
  static const List<String> supportedLanguages = [ar, en, fa];
  static const String arName = 'العربية';
  static const String enName = 'English';
  static const String faName = 'کۆردی';
  static const String defaultLanguage = en;
  static const String defaultLanguageName = enName;
  static List<String> supportedLanguagesNames = [arName, enName, faName];
  static const Map<String, String> languageCodeMap = {
    arName: ar,
    enName: en,
    faName: "ku",
  };
}
